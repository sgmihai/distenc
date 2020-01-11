unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Grids, ComCtrls, Menus, Process, lNetComponents, lNet, DateUtils, fileutil,
  IniFiles,lclintf, CheckLst, EditBtn, kedits, anysort;

const
 SettingsFileName='settings.ini';
 ProjectsINIFileName='projects.ini';
 INI_SERVER_SECT='SERVER';
 INI_WORKER_SECT='WORKER';
 dc:char=';';
 ColNum=13;
 ColNo:word=0;
 ColSs:word=1;
 ColTo:word=2;
 ColNFrames:word=3;
 ColTLength:word=4;
 ColState:word=5;
 ColStartTime:word=6;
 ColEndtime:word=7;
 ColWorker:word=8;
 ColProgress:word=9;
 ColURL:word=10;
 ColVMAF:word=11;
 ColPriority:word=12;
 ColString:array[0..ColNum-1] of string=('Index','StarPos','EndPos','FrameCount','Length','State','StarTime','EndTime','Worker','Progress','URL','VMAF','Priority');
type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ButtonDelProject: TButton;
    ButtonNewProject: TButton;
    ButtonSend: TButton;
    ButtonDisconnect: TButton;
    ButtonListen: TButton;
    CheckBoxSSL: TCheckBox;
    EditCPU_USED: TEdit;
    EditSceneMinDuration: TEdit;
    EditSceneThreshold: TEdit;
    EditVideoFile: TEdit;
    EditSend: TEdit;
    EditIP: TEdit;
    EditPort: TEdit;
    EditVideoURL: TLabeledEdit;
    KNEditPriority: TKNumberEdit;
    Label1: TLabel;
    LabelThreshold: TLabel;
    MenuItem5: TMenuItem;
    MinSceneS: TLabel;
    ListViewProjects: TListView;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    PopupMenu1: TPopupMenu;
    SSL: TLSSLSessionComponent;
    MemoText: TMemo;
    LTCP: TLTCPComponent;
    GridJobs: TStringGrid;
    TimerSave: TTimer;
    TimerCheckQueue: TTimer;
    TimerQuit: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonDelProjectClick(Sender: TObject);
    procedure ButtonDisconnectClick(Sender: TObject);
    procedure ButtonListenClick(Sender: TObject);
    procedure ButtonNewProjectClick(Sender: TObject);
    procedure ButtonSendClick(Sender: TObject);
    procedure EditIPChange(Sender: TObject);
    procedure EditVideoFileChange(Sender: TObject);
    procedure EditVideoURLChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GridJobsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridJobsPrepareCanvas(sender: TObject; aCol, aRow: Integer;
      aState: TGridDrawState);
    procedure GridJobsSelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure GridJobsSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure KNEditPriorityChange(Sender: TObject);
    procedure ListViewProjectsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure LTCPAccept(aSocket: TLSocket);
    procedure LTCPConnect(aSocket: TLSocket);
    procedure LTCPDisconnect(aSocket: TLSocket);
    procedure LTCPError(const msg: string; aSocket: TLSocket);
    procedure LTCPReceive(aSocket: TLSocket);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure gMenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure TimerCheckQueueTimer(Sender: TObject);
    procedure TimerQuitTimer(Sender: TObject);
    procedure TimerSaveTimer(Sender: TObject);
  private
    FNet: TLConnection;
    FIsServer: Boolean;
    procedure SendToAll(const aMsg: string);
  public

  end;
 type TableEntry=String[50];
 type TableRow=Array[0..ColNum-1] of TableEntry;
 type TTable=Array of TableRow;
 type Arw=Array of word;
 type TProjectRec = record
      Name:String;
      VFilePath,VFileDir,VFileName,VFileServer,VFileURL:String;
      SceneCSVFileName,SceneCSVFilePath:String;
      SceneThreshold,SceneMinLength:String;
      user:String;
      Table:TTable;
      Sockets:array[0..65000] of TLSocket;             //shitty thing  this one here.
      Encoder,EncCmd:String;
      Started,Ended:TDateTime;
      Priority:Longint;

      CPU_USED:String;
 end;

var
  Form1: TForm1;
  BasePath,SettingsPath:String;
  SettingsINI:TINIFile;
  SettingsFile,ProjectDir:String;

  ProjectINI:TINIFile;

  ServerIp,BaseVideoURL:String;
  ServerPort:word;


  ProjectCount:DWord=0;
  PendingProjectCount:DWord=0;
  VideoFilePath,VideoFileFolder,VideoFileName,VideoFileServer,VideoFileURL:String;
  AProcess:TProcess;
  Projects,PendingProjects:Array of TProjectRec;
  ProjPIndex:Array[0..1000] of integer;
  SceneCSVFile:String;



  VideoExt:TStringList;


implementation

{$R *.lfm}

{ TForm1 }


procedure LoadSettings;
begin
    SettingsINI := TINIFile.Create(SettingsFile);
   try
     ServerIP:=SettingsINI.ReadString(INI_SERVER_SECT,'ServerIP','localhost');
     ServerPort:=SettingsINI.ReadInteger(INI_SERVER_SECT,'ServerPort',6666);
     BaseVideoURL:=SettingsINI.ReadString(INI_SERVER_SECT,'BaseVideoURL','http://127.0.0.1:8000/');

   finally
     SettingsINI.Free;
   end;
end;

procedure ExecToStrings( const ExecPath: string;
  Params: array of string; POptions: TProcessOptions;TIMEOUT: dword = 2000000);
const
  BUF_SIZE = 2048;
var
  OutputStream: TStream;
  BytesRead: longint;
  Buffer: array[1..BUF_SIZE] of byte;
  StartTime, CurrentTime: TDateTime;
  APOutput:TStringList;
begin
  try
    AProcess := TProcess.Create(nil);
    AProcess.Executable := ExecPath;
    AProcess.Options := POptions;
    AProcess.Parameters.AddStrings(Params);
    StartTime := Now;
    AProcess.Execute;
    if poUsePipes in AProcess.Options then
    begin
      APOutput := nil;
      OutputStream := TMemoryStream.Create;
      while (AProcess.Output.NumBytesAvailable.ToBoolean) or (AProcess.Running) do
      begin
        BytesRead := AProcess.Output.Read(Buffer, BUF_SIZE);
        OutputStream.Write(Buffer, BytesRead);
        CurrentTime := now;
        if MilliSecondsBetween(CurrentTime, StartTime) > TIMEOUT then
          AProcess.Terminate(1);
      end;
      APOutput := TStringList.Create;
      with APOutput do
      begin
        OutputStream.Position := 0;
        // Required to make sure all data is copied from the start
        LoadFromStream(OutputStream);
      end;
    end;
  finally
    FreeAndNil(AProcess);
  end;
end;

procedure AddProjectToListView(const ProjNo:DWord;out ListViewProjects:TListView);
var li:TListItem;
begin
  li:=ListViewProjects.Items.Add;
  li.Caption:=inttostr(ProjNo+1);
  li.SubItems.Add(Projects[ProjNo].Name);
  li.SubItems.Add('Inactive');
  li.Subitems.Add(inttostr(Projects[ProjNo].Priority));
end;

procedure LoadCSVToTable(var Proj:TProjectRec;const FilePath:String;const ArCol,ArLin:Arw; IgnoreFirstLines:word=0; const init:boolean=False);
 var S,line:TStringList;
   debug1,debug2:string;
   i,p,l,j:word;
   t:TableRow;
begin
  S:=TStringList.Create;
  line:=TStringList.Create;
  S.LoadFromFile(FilePath);
  for i:=1 to IgnoreFirstLines do S.Delete(0);
  debug1:=S.text;
  for i:=0 to S.Count-1 do begin
    line.CommaText := S[i];
    debug2:=line.Text;
    l:= length(Proj.Table)+1;
    SetLength(Proj.Table,l);
    for j:=low(ArCol) to high(ArCol) do begin
    //colno 0, colss 2, colto 5, colnfr 7, coltl 8,
      Proj.Table[l-1,ArCol[j]]:=line[ArLin[j]];
      Proj.Table[l-1,ArCol[j]]:=line[ArLin[j]];
      Proj.Table[l-1,ArCol[j]]:=line[ArLin[j]];
      Proj.Table[l-1,ArCol[j]]:=line[ArLin[j]];
      Proj.Table[l-1,ArCol[j]]:=line[ArLin[j]];
    end;
    if (line[5]='A') or (Proj.Table[l-1,5]='') then Proj.Table[l-1,ColState]:='U';
  end;
end;

Procedure LoadTableToGrid(const Table:TTAble;out Grid:TStringGrid);
  var i,j:longint;
begin
  Grid.Enabled:=True; Grid.Visible:=True;
  Grid.RowCount:=high(table)+2;
  for i:=low(Table) to High(table) do   //rows, 0 to rows-1
    for j:=low(Table[i]) to high(Table[i]) do  //columns, 0 to cols-1
      Grid.Cells[j,i+1]:=Table[i,j];
end;

procedure IniToProject(const Section:String; out Proj:TProjectRec);
begin
    Proj.Name:=ProjectINI.ReadString(Section,'Name','');
    Proj.VFileDir:=ProjectINI.ReadString(Section,'VFileDir','');
    Proj.VFileName:=ProjectINI.ReadString(Section,'VFileName','');
    Proj.VFileServer:=ProjectINI.ReadString(Section,'VFileServer','');
    Proj.VFileURL:=ProjectINI.ReadString(Section,'VFileURL','');
    Proj.SceneCSVFileName:=ProjectINI.ReadString(Section,'SceneCSVFileName','');
    Proj.SceneCSVFilePath:=ProjectINI.ReadString(Section,'SceneCSVFilePath','');
    Proj.SceneThreshold:=ProjectINI.ReadString(Section,'SceneThreshold','');
    Proj.SceneMinLength:=ProjectINI.ReadString(Section,'SceneMinLength','');
    Proj.user:=ProjectINI.ReadString(Section,'user','');
    Proj.Encoder:=ProjectINI.ReadString(Section,'Encoder','');
    Proj.CPU_USED:=ProjectINI.ReadString(Section,'CPU_USED','0');
    Proj.EncCmd:=ProjectINI.ReadString(Section,'EncCmd','');
    Proj.Started:=ProjectINI.ReadDateTime(Section,'Started',EncodeDate(1970,01,01)); //todo tofix, this shitty situation, use const 0 time and evaluate if something should be saved based on that
    Proj.Ended:=ProjectINI.ReadDateTime(Section,'Ended',EncodeDate(1970,01,01));
    Proj.Priority:=ProjectINI.ReadInteger(Section,'Priority',0);
end;

procedure ProjectToIni(const Proj:TProjectRec);
begin
    ProjectINI.WriteString(Proj.Name,'Name',Proj.Name);
    ProjectINI.WriteString(Proj.Name,'VFilePath',Proj.VFilePath);
    ProjectINI.WriteString(Proj.Name,'VFileDir',Proj.VFileDir);
    ProjectINI.WriteString(Proj.Name,'VFileName',Proj.VFileName);
    ProjectINI.WriteString(Proj.Name,'VFileServer',Proj.VFileServer);
    ProjectINI.WriteString(Proj.Name,'VFileURL',Proj.VFileURL);
    ProjectINI.WriteString(Proj.Name,'SceneCSVFileName',Proj.SceneCSVFileName);
    ProjectINI.WriteString(Proj.Name,'SceneCSVFilePath',Proj.SceneCSVFilePath);
    ProjectINI.WriteString(Proj.Name,'SceneThreshold',Proj.SceneThreshold);
    ProjectINI.WriteString(Proj.Name,'SceneMinLength',Proj.SceneMinLength);
    ProjectINI.WriteString(Proj.Name,'user',Proj.user);
    ProjectINI.WriteString(Proj.Name,'Encoder',Proj.Encoder);
    ProjectINI.WriteString(Proj.Name,'CPU_USED',Proj.CPU_USED);
    ProjectINI.WriteString(Proj.Name,'EncCmd',Proj.EncCmd);
    ProjectINI.WriteDateTime(Proj.Name,'Started',Proj.Started);
    ProjectINI.WriteDateTime(Proj.Name,'Ended',Proj.Ended);
    ProjectINI.WriteInteger(Proj.Name,'Priority',Proj.Priority);
end;

function ComparePrio(const d1,d2): integer;
var
  i1 : integer absolute d1;
  i2 : integer absolute d2;
begin
  //showmessage(inttostr(i1)+inttostr(i2));
   if Projects[i1].Priority=Projects[i2].Priority then Result:=0
    else
      if Projects[i1].Priority<Projects[i2].Priority
        then Result:=-1
  else Result:=1;
end;

procedure LoadProjects;
var i:dword;
    S:TStringList;
    projname:string;
begin
   try
      ProjectINI := TINIFile.Create(ProjectsINIFileName);
      S := TStringList.Create;
      ProjectINI.ReadSections(S);
      for projname in S do begin
        inc(ProjectCount);
        setLength(Projects,ProjectCount);
        IniToProject(projname,Projects[ProjectCount-1]);
        LoadCSVToTable(Projects[ProjectCount-1],BasePath+Projects[ProjectCount-1].Name+'.csv',[0,1,2,3,4,5,6,7,8,9,10,11,12],[0,1,2,3,4,5,6,7,8,9,10,11,12],0);
        AddProjectToListView(ProjectCount-1,Form1.ListViewProjects);
      //  showmessage(inttostr(Projects[ProjectCount-1].Priority));
      end;
     // showmessage(inttostr(projectcount));
      if ProjectCount > 0 then AnySortt(ProjPIndex, ProjectCount, sizeof(Integer), @ComparePrio);
     // for i:=0 to projectcount-1 do showmessage(inttostr(ProjPIndex[i]));
  finally
    ProjectINI.Free;
    S.Free;
  end;
end;

procedure InitGridRow1(out Grid:TStringGrid);
  var i:byte;
begin
  Grid.ColCount:=ColNum;
  for i:=low(ColString) to high(ColString) do
    Grid.Cells[i,0]:=ColString[i];
end;

procedure SaveProjects;
var i:dword;
begin
  if not FileExists(ProjectsINIFileName) then FileCreate(ProjectsINIFileName);
  ProjectINI := TINIFile.Create(ProjectsINIFileName);
   for i:=low(Projects) to high(Projects) do begin
      ProjectToIni(Projects[i]);
      InitGridRow1(Form1.GridJobs);
      LoadTableToGrid(Projects[i].Table,Form1.GridJobs);
      Form1.GridJobs.SaveToCSVFile(Projects[i].Name+'.csv',',',FALSE);
   end;
   ProjectINI.Free;
end;

procedure InitPIndex;
  var I:word;
begin
   for i:=0 to 1000 do
     ProjPIndex[i]:=i;
end;

procedure DeleteProject(const I:word);
begin
  if Form1.ListViewProjects.ItemFocused <>nil then begin
    Form1.GridJobs.Clear;

    if not FileExists(ProjectsINIFileName) then FileCreate(ProjectsINIFileName);
    ProjectINI := TINIFile.Create(ProjectsINIFileName);
    ProjectINI.EraseSection(Projects[i-1].Name);

    delete(Projects,i-1,1); dec(ProjectCount);
    InitPIndex;
    AnySortt(ProjPIndex, ProjectCount, sizeof(Integer), @ComparePrio);
    Form1.ListViewProjects.Items.Delete(i-1);
    ProjectINI.Free;
  end;
end;



procedure TForm1.EditVideoFileChange(Sender: TObject);
begin
  VideoFilePath:=EditVideoFile.Text;
end;

procedure TForm1.EditVideoURLChange(Sender: TObject);
begin
  if EditVideoURL.Text <>'' then VideoFileURL:=EditVideoURL.Text
                            else VideoFileURL:=BaseVideoURL+VideoFilePath;
end;

procedure TForm1.TimerQuitTimer(Sender: TObject);
begin
  Close;
end;

procedure TForm1.TimerSaveTimer(Sender: TObject);
begin
  if ProjectCount > 0 then SaveProjects;
end;

procedure Listen(var FNet:TLConnection; const ServerIp:String; const ServerPort: word; var SSL:TLSSLSessionComponent; const SSLActive:Boolean=False);
begin
   SSL.SSLActive := false;//SSLActive;
  if FNet.Listen(ServerPort,ServerIp) then begin
    Form1.MemoText.Append('Accepting connections');
    Form1.FIsServer := True;
  end;
end;

procedure TForm1.ButtonListenClick(Sender: TObject);
begin
Listen(Form1.Fnet,ServerIp,ServerPort,Form1.SSL,CheckBoxSSL.Checked);
end;

procedure TForm1.ButtonSendClick(Sender: TObject);
var i:word;
begin
  if Length(EditSend.Text) > 0 then begin
    if FIsServer then begin
      SendToAll(EditSend.Text);
      MemoText.Append(EditSend.Text);
    end else
      FNet.SendMessage(EditSend.Text);
    EditSend.Text := '';
  end;
end;

procedure TForm1.EditIPChange(Sender: TObject);
begin
  ServerIP:=EditIp.Text;
end;

procedure TForm1.ButtonDisconnectClick(Sender: TObject);
begin
  FNet.Disconnect;
  MemoText.Append('Disconnected');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  SaveProjects;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  LoadProjects;
end;

procedure TForm1.ButtonDelProjectClick(Sender: TObject);
begin
  DeleteProject(StrToInt(Form1.ListViewProjects.ItemFocused.Caption));
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction := caFree;
  if FNet.Connected then begin
    CloseAction := caNone; // make sure we quit gracefuly
    FNet.Disconnect; // call disconnect (soft)
    TimerQuit.Enabled := True; // if time runs out, quit ungracefully
  end;
  SaveProjects;
end;

procedure TForm1.LTCPAccept(aSocket: TLSocket);
begin
  MemoText.Append('Connection accepted');
  MemoText.SelStart := Length(MemoText.Lines.Text);

end;

procedure TForm1.LTCPConnect(aSocket: TLSocket);
begin
    MemoText.Append('Connected to remote host');
end;

procedure TForm1.LTCPDisconnect(aSocket: TLSocket);
var i,j:longint;
begin
  //super shitty hack, replace with some kind of mapping, pointer to pointer array or something
   for i:=low(projects) to high(Projects) do  begin
     for j:=low(Projects[i].Sockets) to high(Projects[i].Sockets) do begin
       if Projects[i].Sockets[j]=aSocket then   Projects[i].Sockets[j]:=nil;
     end;
   end;

  MemoText.Append('Connection lost');
  MemoText.SelStart := Length(MemoText.Lines.Text);
end;

procedure TForm1.LTCPError(const msg: string; aSocket: TLSocket);
begin
  MemoText.Append(msg);
  MemoText.SelStart := Length(MemoText.Lines.Text);
end;

function JobString(const Project:TProjectRec; const x:dword; const msg:TStringList):String;
var PieceFileName:string;
    var JobStr:String;
begin
  PieceFileName:=ExtractFileNameWithoutExt(Project.VFileName)+'-'+inttostr(x+1)+ExtractFileExt(Project.VFileName);           //windows ffmpeg does not like url quoted with single quote. linux one needs it for spaces (%20)
  if msg[1]='LIN' then JobStr:='TAKEJOB'+dc+Project.Name+dc+IntToStr(x+1)+dc+Project.Encoder+dc+Project.Table[x,ColNFrames]+dc+PieceFileName+dc+''''+'ffmpeg'+''''+' -y '+'-ss '+Project.Table[x,ColSs]+' -to '+Project.Table[x,ColTo]+' -i '+''''+Project.VFileURL+''''+' -an -sn -pix_fmt yuv420p10le  -c:v libaom-av1 -aq-mode 1 -crf 23 -b:v 0 -cpu-used '+Project.CPU_USED+' -g -1 -strict -2 -pass 1 -passlogfile '+''''+Project.VFileName+inttostr(x+1)+''''+' -f matroska /dev/null && '+''''+'ffmpeg'+''''+' -y '+'-ss '+Project.Table[x,ColSs]+' -to '+Project.Table[x,ColTo]+' -i '+''''+Project.VFileURL+''''+' -an -sn -pix_fmt yuv420p10le -c:v libaom-av1 -aq-mode 1 -crf 23 -b:v 0 -cpu-used '+Project.CPU_USED+' -g -1 -strict -2 -pass 2 -passlogfile '+''''+Project.VFileName+inttostr(x+1)+''''+' '+''''+PieceFileName+''''
   else if msg[1]='WIN' then JobStr:='TAKEJOB'+dc+Project.Name+dc+IntToStr(x+1)+dc+Project.Encoder+dc+Project.Table[x,ColNFrames]+dc+PieceFileName+dc+'"'+'"'+'ffmpeg'+'"'+' -y '+'-ss '+Project.Table[x,ColSs]+' -to '+Project.Table[x,ColTo]+' -i '+'"'+Project.VFileURL+'"'+' -an -sn -pix_fmt yuv420p10le  -c:v libaom-av1 -aq-mode 1 -crf 23 -b:v 0 -cpu-used '+Project.CPU_USED+' -g -1 -strict -2 -pass 1 -passlogfile '+'"'+Project.VFileName+inttostr(x+1)+'"'+' -f matroska NUL && '+'"'+'ffmpeg'+'"'+' -y '+'-ss '+Project.Table[x,ColSs]+' -to '+Project.Table[x,ColTo]+' -i '+'"'+Project.VFileURL+'"'+' -an -sn -pix_fmt yuv420p10le -c:v libaom-av1 -aq-mode 1 -crf 23 -b:v 0 -cpu-used '+Project.CPU_USED+' -g -1 -strict -2 -pass 2 -passlogfile '+'"'+Project.VFileName+inttostr(x+1)+'"'+' '+'"'+PieceFileName+'"'+'"';
  Result:=JobStr;
end;

procedure CheckGridUpdate(const i:dword;out Grid:TStringGrid);
begin
  if Form1.ListViewProjects.ItemFocused <>nil then
    if StrToInt(Form1.ListViewProjects.ItemFocused.Caption)=(i+1) then
     LoadTableToGrid(Projects[i].Table,Grid);
end;

procedure UpdateGridStats(const msg:TStringList);
var i,j,p:word;
begin
   for i:=low(Projects) to high(projects) do
       if Projects[i].Name=msg[1] then begin j:=i; break; end;
   i:=j;
   p:=strtoint(msg[2])-1;
   Projects[i].Table[p,ColWorker]:=msg[3];
   Form1.MemoText.Append(msg[4]);
   Projects[i].Table[p,ColProgress]:=msg[4];
   if msg[5]<>'' then begin         //if received url string is non empty
      Projects[i].Table[p,ColState]:='F'; //mark the file as finished in the db
      Projects[i].Table[p,ColURL]:=msg[5];   //then the file has been uploaded
      Projects[i].Table[p,ColEndtime]:=TimeToStr(Now);  //and we save the timestamp
   end;
   CheckGridUpdate(i,Form1.GridJobs);
end;

function ProjPrStrToInt(const astr:string):longint;
begin
  if astr='' then result:=0
  else Try
     Result:=strtoint(astr);
  except
    On E : EConvertError do
      Result:=0;
  end;
end;

procedure SendJob(msg:TStringList; aSocket:TLSocket);
  var p:dword;
      i,j,max,maxpos:longint;
begin
  for i:=high(projects) downto low(projects) do begin
    p:=ProjPIndex[i];                //cycling through projects in the order of their priority, kept by the ProjPIndex Array
    maxpos:=-1; max:=0;
    for j:=high(Projects[p].Table) downto low(Projects[p].table) do
      if Projects[p].Table[j,ColState]='U' then  //if we find an unassigned job
        if ProjPrStrToInt(Projects[p].Table[j,ColPriority])>=max then begin maxpos:=j; max:=ProjPrStrToInt(Projects[p].Table[j,ColPriority]); end; //if it has the new max priority value, record it
    if maxpos<>-1 then begin
       Form1.FNet.SendMessage(JobString(Projects[p],maxpos,msg),aSocket); //send string with the job to the client
      { if length(Projects[p].Sockets)<maxpos+1 then Insert(aSocket,Projects[p].Sockets,high(Projects[p].Sockets)+1) //store the socket we got in this context so we can send back messages to that worker later
                                               else }Projects[p].Sockets[maxpos]:=aSocket;  // .. so that projects[i]'s  table[x]-> Sockets[x]
       Projects[p].Table[maxpos,ColState]:='A';
       Projects[p].Table[maxpos,ColStartTime]:=TimeToStr(Time);
    //  if length(s)>7 then Projects[i].Table[j,ColWorker]:=copy(s,8,length(s));
      CheckGridUpdate(p,Form1.GridJobs);
      Form1.ListViewProjects.Items[p].SubItems[1]:='Active';
      Exit;
  end;
end;

end;

procedure ClearJob(const p,x:word);
begin
  Projects[p].Table[x,ColStartTime]:='';
  Projects[p].Table[x,ColEndtime]:='';
  Projects[p].Table[x,ColWorker]:='';
  Projects[p].Table[x,ColProgress]:='';
  Projects[p].Table[x,ColURL]:='';
  CheckGridUpdate(p,Form1.GridJobs);
end;

function ProjectNameToProjectID(const name:string):longint;
 var i:longint;
begin
  for i:=low(projects) to high(projects) do
     if projects[i].Name=name then begin Result:=i; exit; end;
  Result:=-1;
end;

procedure ProcessMessage(const s:string;aSocket:TLSocket);
var msg,sl:tstringlist;
begin
  sl:=TStringList.Create;
  sl.Delimiter:=dc; sl.StrictDelimiter:=true;
  sl.DelimitedText:=s;            // SHITTY CODE HERE Onwards
  repeat
    msg:=TStringList.Create;
    repeat
      msg.add(sl[0]);
      sl.Delete(0);
      if sl.Count=0 then break
                 else If (sl[0]='GETJOB') OR (sl[0]='STATS') then break;  //then break;
      until 1=0;
    if msg[0]='GETJOB' then SendJob(msg,aSocket);
    if msg[0]='STATS' then UpdateGridStats(msg);
    if msg[0]='STOPJOB' then  if Projects[ProjectNameToProjectID(msg[1])].Table[strtoint(msg[2])-1,ColState]='A' then begin Projects[ProjectNameToProjectID(msg[1])].Table[strtoint(msg[2])-1,ColState]:='U';  Form1.GridJobs.Cells[ColState,strtoint(msg[2])]:='U'; ClearJob(ProjectNameToProjectID(msg[1]),strtoint(msg[2])-1); end;
    msg.free;
  until sl.Count=0;
  sl.free;
end;

procedure TForm1.LTCPReceive(aSocket: TLSocket);
var
  s: string;
begin
  if aSocket.GetMessage(s) > 0 then begin
    MemoText.Append(s);
    MemoText.SelStart := Length(MemoText.Lines.Text);
    ProcessMessage(s,aSocket);
  end;
end;

procedure SendStopJob(p,x:word);
begin
  if assigned(Projects[p].Sockets[x]) then
  begin Form1.FNet.SendMessage('STOPJOB'+dc+Projects[p].Name+dc+Projects[p].Table[x,ColNo]+dc,Projects[p].Sockets[x]);
  ClearJob(p,x);
  end;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
var p,x,y:word;
begin
//GridJobs.;
  p:=strtoint(ListViewProjects.ItemFocused.Caption)-1; {x:=GridJobs.Row-1;} y:=ColState;
  for x:=GridJobs.Selection.Top-1 to GridJobs.Selection.Bottom-1 do
    if Projects[p].Table[x,y]='A' then begin
      Projects[p].Table[x,y]:='U';
      GridJobs.Cells[y,x+1]:='U';
      SendStopJob(p,x);
      ClearJob(p,x);
  end;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
   var p,x,y:word;
begin
  //GridJobs.;
  p:=strtoint(ListViewProjects.ItemFocused.Caption)-1;{ x:=GridJobs.Row-1;} y:=ColState;
 // showmessage('top='+GridJobs.Selection.Top-1+'bot='+GridJobs.Selection.Bottom-1);
  for x:=GridJobs.Selection.Top-1 to GridJobs.Selection.Bottom-1 do
  if (Projects[p].Table[x,y]='') or (Projects[p].Table[x,y]='U') then  begin {showmessage('p='+inttostr(p)+'x='+inttostr(x)+'y='+inttostr(y));} Projects[p].Table[x,y]:='N'; GridJobs.Cells[y,x+1]:='N'; end
     else if Projects[p].Table[x,y]='N' then begin  {showmessage('p='+inttostr(p)+'x='+inttostr(x)+'y='+inttostr(y)); }Projects[p].Table[x,y]:='U'; GridJobs.Cells[y,x+1]:='U'; ClearJob(p,x);  end
           else if Projects[p].Table[x,y]='A' then begin  {showmessage('p='+inttostr(p)+'x='+inttostr(x)+'y='+inttostr(y)); }Projects[p].Table[x,y]:='N'; GridJobs.Cells[y,x+1]:='N'; SendStopJob(p,x); ClearJob(p,x);  end;
end;

procedure TForm1.gMenuItem4Click(Sender: TObject);
  var p,x,y:word;
begin
p:=strtoint(ListViewProjects.ItemFocused.Caption)-1; {x:=GridJobs.Row-1;} y:=ColState;
for x:=GridJobs.Selection.Top-1 to GridJobs.Selection.Bottom-1 do
  if Projects[p].Table[x,y]='F' then begin
    Projects[p].Table[x,y]:='U';
    GridJobs.Cells[y,x+1]:='U';
    ClearJob(p,x);
  end;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
   OpenUrl(GridJobs.Cells[ColURL,GridJobs.Row]);
end;


procedure TForm1.SendToAll(const aMsg: string);
var
  n: Integer;
begin
  if FNet is TLUdp then begin // UDPv4, use broadcast
  //  if FNet.SocketNet = LAF_INET6 then
  //    raise Exception.create('Unable to broadcast with UDPv6');
    n := TLUdp(FNet).SendMessage(aMsg, LADDR_BR);
    if n < Length(aMsg) then
      MemoText.Append('Error on send [' + IntToStr(n) + ']');
  end else begin // TCPv4 or TCPv6
    FNet.IterReset; // start at server socket
    while FNet.IterNext do begin // skip server socket, go to clients only
      n := FNet.SendMessage(aMsg, FNet.Iterator);
      if n < Length(aMsg) then
        MemoText.Append('Error on send [' + IntToStr(n) + ']');
    end;
  end;
end;

procedure TForm1.KNEditPriorityChange(Sender: TObject);
var i:word;
begin
   if ListViewProjects.Selected <> nil then begin
     Projects[strtoint(ListViewProjects.Selected.Caption)-1].Priority:=KNEditPriority.ValueAsInt;
     ListViewProjects.Selected.SubItems[2]:=KNEditPriority.ValueAsText;
     AnySortt(ProjPIndex, ProjectCount, sizeof(Integer), @ComparePrio);
   end;
   //for i:=0 to projectcount-1 do showmessage(inttostr(ProjPIndex[i]));
end;

procedure AddQProject(i:dword);
  var CSVStrings:TSTringList;
begin
  inc(ProjectCount);
  setLength(Projects,ProjectCount);
  Projects[ProjectCount-1]:=PendingProjects[i];
  AnySortt(ProjPIndex, ProjectCount, sizeof(Integer), @ComparePrio);

  Delete(PendingProjects,i,1);
  dec(PendingProjectCount);

  //showmessage(Projects[ProjectCount-1].SceneCSVFilePath);
  LoadCSVToTable(Projects[ProjectCount-1],Projects[ProjectCount-1].SceneCSVFilePath,[Colno,Colss,ColTo,ColNFrames,ColTLength],[0,2,5,7,8],2,TRUE);
  AddProjectToListView(ProjectCount-1,Form1.ListViewProjects);
end;

procedure TForm1.TimerCheckQueueTimer(Sender: TObject);
  var i:dword; SceneCSVNewFileName:string;
begin
     TimerCheckQueue.Enabled:=False;
     //debug check if there's no bugs when deleting while looping through this.
     for i:=high(PendingProjects) downto 0 do
       if FileExists(PendingProjects[i].SceneCSVFilePath) then begin
            SceneCSVNewFileName:=ExtractFileNameWithoutExt(PendingProjects[i].VFileName)+'-Scenes-'+PendingProjects[i].SceneThreshold+'-'+PendingProjects[i].SceneMinLength+'.csv';

            RenameFile(PendingProjects[i].SceneCSVFilePath,PendingProjects[i].VFileDir+SceneCSVNewFileName);

            PendingProjects[i].SceneCSVFileName:=SceneCSVNewFileName;
            PendingProjects[i].SceneCSVFilePath:=PendingProjects[i].VFileDir+SceneCSVNewFileName;
            AddQProject(i);
       end else TimerCheckQueue.Enabled:=True;
end;


function CheckIfValidVideoFile(thepath:string):boolean;
begin
  if pos(lowercase(ExtractFileExt(thepath)), lowercase(VideoExt.text)) > 0
      then Result:=True
      else Result:=false;
end;

procedure CreatePendingProject(VideoFilePath:String);
  var p:word; s,SceneCSVNewFileName:string;
begin
  if FileExists(VideoFilePath) then
   if CheckIfValidVideoFile(VideoFilePath) then begin
    inc(PendingProjectCount);
    setLength(PendingProjects,PendingProjectCount);
    p:=PendingProjectCount-1;
    PendingProjects[p].Name:=ExtractFileName(VideoFilePath);
    PendingProjects[p].VFilePath:=VideoFilePath;
    PendingProjects[p].VFileName:=ExtractFileName(VideoFilePath);
    PendingProjects[p].VFileDir:=ExtractFilePath(VideoFilePath);
    if VideoFileURL<>'' then PendingProjects[p].VFileURL:=VideoFileURL
                        else PendingProjects[p].VFileURL:=BaseVideoURL+PendingProjects[p].VFileName;
    PendingProjects[p].VFileURL:=Stringreplace(PendingProjects[p].VFileURL,' ','%20',[rfReplaceAll]);

    PendingProjects[p].CPU_USED:=form1.EditCPU_USED.text;

    PendingProjects[p].SceneThreshold := Form1.EditSceneThreshold.Text;
    PendingProjects[p].SceneMinLength := Form1.EditSceneMinDuration.Text;

    PendingProjects[p].Encoder:='TEST';

    PendingProjects[p].Priority:=0;

    
    PendingProjects[p].Started:=Now;


    //super shitty code
    SceneCSVNewFileName:=ExtractFileNameWithoutExt(ExtractFileName(VideoFilePath))+'-Scenes-'+PendingProjects[p].SceneThreshold+'-'+PendingProjects[p].SceneMinLength+'.csv';

    if FileExists(PendingProjects[p].VFileDir+SceneCSVNewFileName) then begin
       PendingProjects[p].SceneCSVFileName:= SceneCSVNewFileName;
       PendingProjects[p].SceneCSVFilePath:= PendingProjects[p].VFileDir+ SceneCSVNewFileName;
       AddQProject(p);
    end else begin
       {$IFDEF UNIX}
     ExecToStrings('/usr/bin/python',['/usr/bin/scenedetect','-i',VideoFilePath,'-s',ExtractFileName(VideoFilePath)+'stats.csv','-o',PendingProjects[p].VFileDir,'detect-content','-t',PendingProjects[p].SceneThreshold,'-m',PendingProjects[p].SceneMinLength+'s','list-scenes'],[]);
       {$ENDIF}
       {$IFDEF WINDOWS}
        ExecToStrings('scenedetect',['-i',VideoFilePath,'-s',ExtractFileName(VideoFilePath)+'stats.csv','-o',PendingProjects[p].VFileDir,'detect-content','-t',PendingProjects[p].SceneThreshold,{'-m',PendingProjects[p].SceneMinLength+'s',}'list-scenes'],[]);
       {$ENDIF}
    PendingProjects[p].SceneCSVFileName:=ExtractFileNameWithoutExt(ExtractFileName(VideoFilePath))+'-Scenes.csv';
    PendingProjects[p].SceneCSVFilePath:=PendingProjects[p].VFileDir+PendingProjects[p].SceneCSVFileName;

    Form1.TimerCheckQueue.Enabled:=True;
    end;
  end;
end;


procedure Inits;
var i:word;
begin
  BasePath := ExtractFilePath(ParamStr(0));
  SettingsPath := BasePath+'settings'+PathDelim;
  SettingsFile:=SettingsPath+SettingsFileName;
  LoadSettings;
  Listen(Form1.Fnet,ServerIp,ServerPort,Form1.SSL);
  VideoFileURL := '';

  ProjectDir:=BasePath+'projects';
  if not DirectoryExists(ProjectDir) then CreateDir(ProjectDir);

  try
    VideoExt := TStringList.Create;
    VideoExt.LoadFromFile(SettingsPath + 'videoext');
  except
    ShowMessage('File Extensions to upload file could not be loaded');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:word;
begin
  InitPIndex; //to do remove this shitty code. used to initalized the index array that is used to sort priority based positon of projects
  LoadProjects;
  FNet := LTCP;
  FIsServer := False;
   Inits;
end;


procedure TForm1.GridJobsMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var Col,Row:Integer;
begin
   if Button = mbRight then begin
      GridJobs.MouseToCell(X,Y,Col,Row); // Convert X,Y coordinates of mouse to cell Col & Row
         if (GridJobs.FixedCols<=Col)and(GridJobs.FixedRows<=Row) then begin
             GridJobs.Row := row;
             MenuItem1.Caption:=GridJobs.Cells[0,row];
             MenuItem2.Caption:='Unassign';
             MenuItem3.Caption:='Enable/Disable';
             MenuItem4.Caption:='Delete';
             MenuItem5.Caption:='Download';
             PopupMenu1.PopUp();
         end;
   end;
end;

procedure TForm1.GridJobsPrepareCanvas(sender: TObject; aCol, aRow: Integer;
  aState: TGridDrawState);
begin
  if (gdFixed in aState) then   //no idea what this does
    Exit;
  if GridJobs.Cells[ColState,ARow]='F' then
      GridJobs.Canvas.Brush.Color:=clGreen;
    if GridJobs.Cells[ColState,ARow]='N' then
      GridJobs.Canvas.Brush.Color:=clGray;
    if GridJobs.Cells[ColState,ARow]='A' then
      GridJobs.Canvas.Brush.Color:=clBlue;
 {   if GridJobs.Cells[ColState,ARow]='U' then
      GridJobs.Canvas.Brush.Color:=clNone;    }
end;

procedure TForm1.GridJobsSelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if ACol = ColPriority then
    GridJobs.Options := GridJobs.Options+[goEditing]
  else
    GridJobs.Options := GridJobs.Options-[goEditing];
end;

procedure TForm1.GridJobsSetEditText(Sender: TObject; ACol, ARow: Integer;
  const Value: string);
begin
  if ACol=ColPriority then
    Projects[strtoint(ListViewProjects.Selected.Caption)-1].Table[GridJobs.Row-1,ColPriority]:=Value;
end;

procedure LoadProjectView(const ProjNo:DWord);
begin
   InitGridRow1(Form1.GridJobs);
   LoadTableToGrid(Projects[ProjNo].Table, Form1.GridJobs);
end;

procedure TForm1.ListViewProjectsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
var i:word;
begin
     if Selected then LoadProjectView(strtoint(Item.Caption)-1);
end;

procedure TForm1.ButtonNewProjectClick(Sender: TObject);
begin
   CreatePendingProject(VideoFilePath);
end;

end.



