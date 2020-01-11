	.file "distenc.lpr"
# Begin asmlist al_begin

.section .debug_line
	.type	.Ldebug_linesection0,@object
.Ldebug_linesection0:
	.type	.Ldebug_line0,@object
.Ldebug_line0:

.section .debug_abbrev
	.type	.Ldebug_abbrevsection0,@object
.Ldebug_abbrevsection0:
	.type	.Ldebug_abbrev0,@object
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$P$DISTENC,"ax"
.globl	DEBUGSTART_$P$DISTENC
	.type	DEBUGSTART_$P$DISTENC,@object
DEBUGSTART_$P$DISTENC:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_main,"ax"
	.balign 16,0x90
.globl	main
	.type	main,@function
main:
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.Lc2:
.Lc3:
.Ll1:
	pushq	%rbp
.Lc4:
.Lc5:
	movq	%rsp,%rbp
.Lc6:
	call	fpc_initializeunits@PLT
.Ll2:
	movq	TC_$FORMS_$$_REQUIREDERIVEDFORMRESOURCE@GOTPCREL(%rip),%rax
	movb	$1,(%rax)
.Ll3:
	movq	TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rax
	movb	$1,568(%rax)
.Ll4:
	movq	TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rax
	movq	(%rax),%rax
	call	*488(%rax)
.Ll5:
	movq	U_$UNIT1_$$_FORM1@GOTPCREL(%rip),%rdx
	movq	TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	movq	VMT_$UNIT1_$$_TFORM1@GOTPCREL(%rip),%rsi
	call	FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal@PLT
.Ll6:
	movq	TC_$FORMS_$$_APPLICATION@GOTPCREL(%rip),%rax
	movq	(%rax),%rdi
	call	FORMS$_$TAPPLICATION_$__$$_RUN@PLT
.Ll7:
	call	fpc_do_exit@PLT
.Lc7:
	movq	%rbp,%rsp
.Lc8:
.Lc9:
	popq	%rbp
	ret
.Lc1:
.Lt1:
.Le0:
	.size	main, .Le0 - main
.Ll8:

.section .text,"ax"

.section .fpc.n_links,"aw"
	.quad	DEBUGSTART_$P$DISTENC
	.quad	DEBUGEND_$P$DISTENC
	.quad	DEBUGSTART_$INTERFACES
	.quad	DEBUGEND_$INTERFACES
	.quad	DEBUGSTART_$FORMS
	.quad	DEBUGEND_$FORMS
	.quad	DEBUGSTART_$UNIT1
	.quad	DEBUGEND_$UNIT1
	.quad	DEBUGSTART_$LNETVISUAL
	.quad	DEBUGEND_$LNETVISUAL
	.quad	DEBUGSTART_$GTK2DISABLELIBOVERLAY
	.quad	DEBUGEND_$GTK2DISABLELIBOVERLAY
	.quad	DEBUGSTART_$GTK2INT
	.quad	DEBUGEND_$GTK2INT
	.quad	DEBUGSTART_$LAZFILEUTILS
	.quad	DEBUGEND_$LAZFILEUTILS
	.quad	DEBUGSTART_$LAZUTF8
	.quad	DEBUGEND_$LAZUTF8
	.quad	DEBUGSTART_$DYNHASHARRAY
	.quad	DEBUGEND_$DYNHASHARRAY
	.quad	DEBUGSTART_$MAPS
	.quad	DEBUGEND_$MAPS
	.quad	DEBUGSTART_$INTEGERLIST
	.quad	DEBUGEND_$INTEGERLIST
	.quad	DEBUGSTART_$LAZLOGGERBASE
	.quad	DEBUGEND_$LAZLOGGERBASE
	.quad	DEBUGSTART_$LAZSTRINGUTILS
	.quad	DEBUGEND_$LAZSTRINGUTILS
	.quad	DEBUGSTART_$DIALOGS
	.quad	DEBUGEND_$DIALOGS
	.quad	DEBUGSTART_$CONTROLS
	.quad	DEBUGEND_$CONTROLS
	.quad	DEBUGSTART_$LCLSTRCONSTS
	.quad	DEBUGEND_$LCLSTRCONSTS
	.quad	DEBUGSTART_$LMESSAGES
	.quad	DEBUGEND_$LMESSAGES
	.quad	DEBUGSTART_$LCLPROC
	.quad	DEBUGEND_$LCLPROC
	.quad	DEBUGSTART_$LCLINTF
	.quad	DEBUGEND_$LCLINTF
	.quad	DEBUGSTART_$LCLTYPE
	.quad	DEBUGEND_$LCLTYPE
	.quad	DEBUGSTART_$GRAPHTYPE
	.quad	DEBUGEND_$GRAPHTYPE
	.quad	DEBUGSTART_$GRAPHMATH
	.quad	DEBUGEND_$GRAPHMATH
	.quad	DEBUGSTART_$GRAPHICS
	.quad	DEBUGEND_$GRAPHICS
	.quad	DEBUGSTART_$MENUS
	.quad	DEBUGEND_$MENUS
	.quad	DEBUGSTART_$THEMES
	.quad	DEBUGEND_$THEMES
	.quad	DEBUGSTART_$BUTTONS
	.quad	DEBUGEND_$BUTTONS
	.quad	DEBUGSTART_$STDCTRLS
	.quad	DEBUGEND_$STDCTRLS
	.quad	DEBUGSTART_$CHECKLST
	.quad	DEBUGEND_$CHECKLST
	.quad	DEBUGSTART_$COMCTRLS
	.quad	DEBUGEND_$COMCTRLS
	.quad	DEBUGSTART_$EXTCTRLS
	.quad	DEBUGEND_$EXTCTRLS
	.quad	DEBUGSTART_$LCLPLATFORMDEF
	.quad	DEBUGEND_$LCLPLATFORMDEF
	.quad	DEBUGSTART_$INTERFACEBASE
	.quad	DEBUGEND_$INTERFACEBASE
	.quad	DEBUGSTART_$WSLCLCLASSES
	.quad	DEBUGEND_$WSLCLCLASSES
	.quad	DEBUGSTART_$WSCONTROLS
	.quad	DEBUGEND_$WSCONTROLS
	.quad	DEBUGSTART_$GTK2WINAPIWINDOW
	.quad	DEBUGEND_$GTK2WINAPIWINDOW
	.quad	DEBUGSTART_$GTK2GLOBALS
	.quad	DEBUGEND_$GTK2GLOBALS
	.quad	DEBUGSTART_$GTK2PROC
	.quad	DEBUGEND_$GTK2PROC
	.quad	DEBUGSTART_$GTK2DEF
	.quad	DEBUGEND_$GTK2DEF
	.quad	DEBUGSTART_$GTK2FONTCACHE
	.quad	DEBUGEND_$GTK2FONTCACHE
	.quad	DEBUGSTART_$GTK2EXTRA
	.quad	DEBUGEND_$GTK2EXTRA
	.quad	DEBUGSTART_$GTK2MSGQUEUE
	.quad	DEBUGEND_$GTK2MSGQUEUE
	.quad	DEBUGSTART_$LAZUTILSSTRCONSTS
	.quad	DEBUGEND_$LAZUTILSSTRCONSTS
	.quad	DEBUGSTART_$FPCADDS
	.quad	DEBUGEND_$FPCADDS
	.quad	DEBUGSTART_$LAZCLASSES
	.quad	DEBUGEND_$LAZCLASSES
	.quad	DEBUGSTART_$LAZMETHODLIST
	.quad	DEBUGEND_$LAZMETHODLIST
	.quad	DEBUGSTART_$LAZ_AVL_TREE
	.quad	DEBUGEND_$LAZ_AVL_TREE
	.quad	DEBUGSTART_$LAZTRACER
	.quad	DEBUGEND_$LAZTRACER
	.quad	DEBUGSTART_$LAZUTILITIES
	.quad	DEBUGEND_$LAZUTILITIES
	.quad	DEBUGSTART_$LRESOURCES
	.quad	DEBUGEND_$LRESOURCES
	.quad	DEBUGSTART_$BUTTONPANEL
	.quad	DEBUGEND_$BUTTONPANEL
	.quad	DEBUGSTART_$LCLCLASSES
	.quad	DEBUGEND_$LCLCLASSES
	.quad	DEBUGSTART_$CLIPBRD
	.quad	DEBUGEND_$CLIPBRD
	.quad	DEBUGSTART_$LCLTASKDIALOG
	.quad	DEBUGEND_$LCLTASKDIALOG
	.quad	DEBUGSTART_$UITYPES
	.quad	DEBUGEND_$UITYPES
	.quad	DEBUGSTART_$FILEUTIL
	.quad	DEBUGEND_$FILEUTIL
	.quad	DEBUGSTART_$LAZCONFIGSTORAGE
	.quad	DEBUGEND_$LAZCONFIGSTORAGE
	.quad	DEBUGSTART_$DYNQUEUE
	.quad	DEBUGEND_$DYNQUEUE
	.quad	DEBUGSTART_$LAZUTF8CLASSES
	.quad	DEBUGEND_$LAZUTF8CLASSES
	.quad	DEBUGSTART_$AVGLVLTREE
	.quad	DEBUGEND_$AVGLVLTREE
	.quad	DEBUGSTART_$LAZDBGLOG
	.quad	DEBUGEND_$LAZDBGLOG
	.quad	DEBUGSTART_$UTF8PROCESS
	.quad	DEBUGEND_$UTF8PROCESS
	.quad	DEBUGSTART_$LAZSYSUTILS
	.quad	DEBUGEND_$LAZSYSUTILS
	.quad	DEBUGSTART_$INTFGRAPHICS
	.quad	DEBUGEND_$INTFGRAPHICS
	.quad	DEBUGSTART_$LCLVERSION
	.quad	DEBUGEND_$LCLVERSION
	.quad	DEBUGSTART_$ICNSTYPES
	.quad	DEBUGEND_$ICNSTYPES
	.quad	DEBUGSTART_$LAZVERSION
	.quad	DEBUGEND_$LAZVERSION
	.quad	DEBUGSTART_$LCLRESCACHE
	.quad	DEBUGEND_$LCLRESCACHE
	.quad	DEBUGSTART_$WSREFERENCES
	.quad	DEBUGEND_$WSREFERENCES
	.quad	DEBUGSTART_$TMSCHEMA
	.quad	DEBUGEND_$TMSCHEMA
	.quad	DEBUGSTART_$MASKS
	.quad	DEBUGEND_$MASKS
	.quad	DEBUGSTART_$CUSTOMTIMER
	.quad	DEBUGEND_$CUSTOMTIMER
	.quad	DEBUGSTART_$ACTNLIST
	.quad	DEBUGEND_$ACTNLIST
	.quad	DEBUGSTART_$HELPINTFS
	.quad	DEBUGEND_$HELPINTFS
	.quad	DEBUGSTART_$IMGLIST
	.quad	DEBUGEND_$IMGLIST
	.quad	DEBUGSTART_$WSIMGLIST
	.quad	DEBUGEND_$WSIMGLIST
	.quad	DEBUGSTART_$WSPROC
	.quad	DEBUGEND_$WSPROC
	.quad	DEBUGSTART_$WSFACTORY
	.quad	DEBUGEND_$WSFACTORY
	.quad	DEBUGSTART_$PROPERTYSTORAGE
	.quad	DEBUGEND_$PROPERTYSTORAGE
	.quad	DEBUGSTART_$WSMENUS
	.quad	DEBUGEND_$WSMENUS
	.quad	DEBUGSTART_$LAZLOGGER
	.quad	DEBUGEND_$LAZLOGGER
	.quad	DEBUGSTART_$WSFORMS
	.quad	DEBUGEND_$WSFORMS
	.quad	DEBUGSTART_$IMAGELISTCACHE
	.quad	DEBUGEND_$IMAGELISTCACHE
	.quad	DEBUGSTART_$TEXTSTRINGS
	.quad	DEBUGEND_$TEXTSTRINGS
	.quad	DEBUGSTART_$EXTENDEDSTRINGS
	.quad	DEBUGEND_$EXTENDEDSTRINGS
	.quad	DEBUGSTART_$WSSTDCTRLS
	.quad	DEBUGEND_$WSSTDCTRLS
	.quad	DEBUGSTART_$WSBUTTONS
	.quad	DEBUGEND_$WSBUTTONS
	.quad	DEBUGSTART_$POPUPNOTIFIER
	.quad	DEBUGEND_$POPUPNOTIFIER
	.quad	DEBUGSTART_$WSEXTCTRLS
	.quad	DEBUGEND_$WSEXTCTRLS
	.quad	DEBUGSTART_$WSDIALOGS
	.quad	DEBUGEND_$WSDIALOGS
	.quad	DEBUGSTART_$WSCHECKLST
	.quad	DEBUGEND_$WSCHECKLST
	.quad	DEBUGSTART_$TOOLWIN
	.quad	DEBUGEND_$TOOLWIN
	.quad	DEBUGSTART_$WSCOMCTRLS
	.quad	DEBUGEND_$WSCOMCTRLS
	.quad	DEBUGSTART_$WSTOOLWIN
	.quad	DEBUGEND_$WSTOOLWIN
	.quad	DEBUGSTART_$EXTDLGS
	.quad	DEBUGEND_$EXTDLGS
	.quad	DEBUGSTART_$LCLMESSAGEGLUE
	.quad	DEBUGEND_$LCLMESSAGEGLUE
	.quad	DEBUGSTART_$GTK2DEBUG
	.quad	DEBUGEND_$GTK2DEBUG
	.quad	DEBUGSTART_$CALENDAR
	.quad	DEBUGEND_$CALENDAR
	.quad	DEBUGSTART_$CALCFORM
	.quad	DEBUGEND_$CALCFORM
	.quad	DEBUGSTART_$WSCALENDAR
	.quad	DEBUGEND_$WSCALENDAR
	.quad	DEBUGSTART_$WSEXTDLGS
	.quad	DEBUGEND_$WSEXTDLGS
	.quad	DEBUGSTART_$MESSAGES
	.quad	DEBUGEND_$MESSAGES
	.quad	DEBUGSTART_$LCLMEMMANAGER
	.quad	DEBUGEND_$LCLMEMMANAGER
	.quad	DEBUGSTART_$GTK2WSPRIVATE
	.quad	DEBUGEND_$GTK2WSPRIVATE
	.quad	DEBUGSTART_$GTK2WSCONTROLS
	.quad	DEBUGEND_$GTK2WSCONTROLS
	.quad	DEBUGSTART_$LAZLINKEDLIST
	.quad	DEBUGEND_$LAZLINKEDLIST
	.quad	DEBUGSTART_$GTK2WSFACTORY
	.quad	DEBUGEND_$GTK2WSFACTORY
	.quad	DEBUGSTART_$GTK2WSSTDCTRLS
	.quad	DEBUGEND_$GTK2WSSTDCTRLS
	.quad	DEBUGSTART_$GTK2WSCHECKLST
	.quad	DEBUGEND_$GTK2WSCHECKLST
	.quad	DEBUGSTART_$GTK2THEMES
	.quad	DEBUGEND_$GTK2THEMES
	.quad	DEBUGSTART_$SPIN
	.quad	DEBUGEND_$SPIN
	.quad	DEBUGSTART_$GRIDS
	.quad	DEBUGEND_$GRIDS
	.quad	DEBUGSTART_$PAIRSPLITTER
	.quad	DEBUGEND_$PAIRSPLITTER
	.quad	DEBUGSTART_$WSSPIN
	.quad	DEBUGEND_$WSSPIN
	.quad	DEBUGSTART_$MASKEDIT
	.quad	DEBUGEND_$MASKEDIT
	.quad	DEBUGSTART_$DYNAMICARRAY
	.quad	DEBUGEND_$DYNAMICARRAY
	.quad	DEBUGSTART_$LAZ2_XMLCFG
	.quad	DEBUGEND_$LAZ2_XMLCFG
	.quad	DEBUGSTART_$LCSVUTILS
	.quad	DEBUGEND_$LCSVUTILS
	.quad	DEBUGSTART_$LAZFILECACHE
	.quad	DEBUGEND_$LAZFILECACHE
	.quad	DEBUGSTART_$LAZ2_DOM
	.quad	DEBUGEND_$LAZ2_DOM
	.quad	DEBUGSTART_$LAZ2_XMLREAD
	.quad	DEBUGEND_$LAZ2_XMLREAD
	.quad	DEBUGSTART_$LAZ2_XMLWRITE
	.quad	DEBUGEND_$LAZ2_XMLWRITE
	.quad	DEBUGSTART_$LAZ2_XMLUTILS
	.quad	DEBUGEND_$LAZ2_XMLUTILS
	.quad	DEBUGSTART_$WSGRIDS
	.quad	DEBUGEND_$WSGRIDS
	.quad	DEBUGSTART_$WSPAIRSPLITTER
	.quad	DEBUGEND_$WSPAIRSPLITTER
	.quad	DEBUGSTART_$GTK2WSBUTTONS
	.quad	DEBUGEND_$GTK2WSBUTTONS
	.quad	DEBUGSTART_$GTK2WSCALENDAR
	.quad	DEBUGEND_$GTK2WSCALENDAR
	.quad	DEBUGSTART_$GTK2WSCOMCTRLS
	.quad	DEBUGEND_$GTK2WSCOMCTRLS
	.quad	DEBUGSTART_$GTK2WSDIALOGS
	.quad	DEBUGEND_$GTK2WSDIALOGS
	.quad	DEBUGSTART_$GTK2WSEXTCTRLS
	.quad	DEBUGEND_$GTK2WSEXTCTRLS
	.quad	DEBUGSTART_$GTK2WSEXTDLGS
	.quad	DEBUGEND_$GTK2WSEXTDLGS
	.quad	DEBUGSTART_$GTK2WSFORMS
	.quad	DEBUGEND_$GTK2WSFORMS
	.quad	DEBUGSTART_$GTK2WSGRIDS
	.quad	DEBUGEND_$GTK2WSGRIDS
	.quad	DEBUGSTART_$GTK2WSIMGLIST
	.quad	DEBUGEND_$GTK2WSIMGLIST
	.quad	DEBUGSTART_$GTK2WSMENUS
	.quad	DEBUGEND_$GTK2WSMENUS
	.quad	DEBUGSTART_$GTK2WSSPIN
	.quad	DEBUGEND_$GTK2WSSPIN
	.quad	DEBUGSTART_$GTK2WSPAIRSPLITTER
	.quad	DEBUGEND_$GTK2WSPAIRSPLITTER
	.quad	DEBUGSTART_$UNITYWSCTRLS
	.quad	DEBUGEND_$UNITYWSCTRLS
	.quad	DEBUGSTART_$GTK2CELLRENDERER
	.quad	DEBUGEND_$GTK2CELLRENDERER
	.quad	DEBUGSTART_$GTK2LISTVIEWTREEMODEL
	.quad	DEBUGEND_$GTK2LISTVIEWTREEMODEL
	.quad	DEBUGSTART_$LNETCOMPONENTS
	.quad	DEBUGEND_$LNETCOMPONENTS
	.quad	DEBUGSTART_$LNET
	.quad	DEBUGEND_$LNET
	.quad	DEBUGSTART_$KEDITS
	.quad	DEBUGEND_$KEDITS
	.quad	DEBUGSTART_$ANYSORT
	.quad	DEBUGEND_$ANYSORT
	.quad	DEBUGSTART_$LCLNET
	.quad	DEBUGEND_$LCLNET
	.quad	DEBUGSTART_$LTELNET
	.quad	DEBUGEND_$LTELNET
	.quad	DEBUGSTART_$LFTP
	.quad	DEBUGEND_$LFTP
	.quad	DEBUGSTART_$LSMTP
	.quad	DEBUGEND_$LSMTP
	.quad	DEBUGSTART_$LHTTP
	.quad	DEBUGEND_$LHTTP
	.quad	DEBUGSTART_$LNETSSL
	.quad	DEBUGEND_$LNETSSL
	.quad	DEBUGSTART_$LEVENTS
	.quad	DEBUGEND_$LEVENTS
	.quad	DEBUGSTART_$LCOMMON
	.quad	DEBUGEND_$LCOMMON
	.quad	DEBUGSTART_$LCONTROLSTACK
	.quad	DEBUGEND_$LCONTROLSTACK
	.quad	DEBUGSTART_$LMIMEWRAPPER
	.quad	DEBUGEND_$LMIMEWRAPPER
	.quad	DEBUGSTART_$LMIMESTREAMS
	.quad	DEBUGEND_$LMIMESTREAMS
	.quad	DEBUGSTART_$LHTTPUTIL
	.quad	DEBUGEND_$LHTTPUTIL
	.quad	DEBUGSTART_$LSTRBUFFER
	.quad	DEBUGEND_$LSTRBUFFER
	.quad	DEBUGSTART_$KFUNCTIONS
	.quad	DEBUGEND_$KFUNCTIONS
	.quad	DEBUGSTART_$KCONTROLS
	.quad	DEBUGEND_$KCONTROLS
	.quad	DEBUGSTART_$KDIALOGS
	.quad	DEBUGEND_$KDIALOGS
	.quad	DEBUGSTART_$KLOG
	.quad	DEBUGEND_$KLOG
	.quad	DEBUGSTART_$LCONVENCODING
	.quad	DEBUGEND_$LCONVENCODING
	.quad	DEBUGSTART_$PRINTERS
	.quad	DEBUGEND_$PRINTERS
	.quad	DEBUGSTART_$KGRAPHICS
	.quad	DEBUGEND_$KGRAPHICS
	.quad	DEBUGSTART_$KMESSAGEBOX
	.quad	DEBUGEND_$KMESSAGEBOX
	.quad	DEBUGSTART_$KRES
	.quad	DEBUGEND_$KRES
	.quad	DEBUGSTART_$KPRINTPREVIEW
	.quad	DEBUGEND_$KPRINTPREVIEW
	.quad	DEBUGSTART_$KPRINTSETUP
	.quad	DEBUGEND_$KPRINTSETUP
	.quad	DEBUGSTART_$PRINTERSDLGS
	.quad	DEBUGEND_$PRINTERSDLGS
	.quad	DEBUGSTART_$PRINTER4LAZSTRCONST
	.quad	DEBUGEND_$PRINTER4LAZSTRCONST
	.quad	DEBUGSTART_$OSPRINTERS
	.quad	DEBUGEND_$OSPRINTERS
	.quad	DEBUGSTART_$POSTSCRIPTCANVAS
	.quad	DEBUGEND_$POSTSCRIPTCANVAS
	.quad	DEBUGSTART_$CUPSDYN
	.quad	DEBUGEND_$CUPSDYN
	.quad	DEBUGSTART_$CAIROCANVAS
	.quad	DEBUGEND_$CAIROCANVAS
	.quad	DEBUGSTART_$POSTSCRIPTUNICODE
	.quad	DEBUGEND_$POSTSCRIPTUNICODE
	.quad	DEBUGSTART_$UDLGSELECTPRINTER
	.quad	DEBUGEND_$UDLGSELECTPRINTER
	.quad	DEBUGSTART_$UDLGPROPERTIESPRINTER
	.quad	DEBUGEND_$UDLGPROPERTIESPRINTER
	.quad	DEBUGSTART_$CUPSLCL
	.quad	DEBUGEND_$CUPSLCL
	.quad	DEBUGSTART_$UDLGPAGESETUP
	.quad	DEBUGEND_$UDLGPAGESETUP
	.quad	DEBUGSTART_$FRAMEPAGESETUP
	.quad	DEBUGEND_$FRAMEPAGESETUP
	.quad	DEBUGSTART_$LNETVISUALREG
	.quad	DEBUGEND_$LNETVISUALREG
	.quad	DEBUGSTART_$LAZARUSPACKAGEINTF
	.quad	DEBUGEND_$LAZARUSPACKAGEINTF
	.quad	DEBUGSTART_$PROPEDITS
	.quad	DEBUGEND_$PROPEDITS
	.quad	DEBUGSTART_$EDITBTN
	.quad	DEBUGEND_$EDITBTN
	.quad	DEBUGSTART_$VALEDIT
	.quad	DEBUGEND_$VALEDIT
	.quad	DEBUGSTART_$FILECTRL
	.quad	DEBUGEND_$FILECTRL
	.quad	DEBUGSTART_$CHECKBOXTHEMED
	.quad	DEBUGEND_$CHECKBOXTHEMED
	.quad	DEBUGSTART_$STRINGHASHLIST
	.quad	DEBUGEND_$STRINGHASHLIST
	.quad	DEBUGSTART_$OBJINSPSTRCONSTS
	.quad	DEBUGEND_$OBJINSPSTRCONSTS
	.quad	DEBUGSTART_$PROPEDITUTILS
	.quad	DEBUGEND_$PROPEDITUTILS
	.quad	DEBUGSTART_$PACKAGEDEPENDENCYINTF
	.quad	DEBUGEND_$PACKAGEDEPENDENCYINTF
	.quad	DEBUGSTART_$FRMSELECTPROPS
	.quad	DEBUGEND_$FRMSELECTPROPS
	.quad	DEBUGSTART_$STRINGSPROPEDITDLG
	.quad	DEBUGEND_$STRINGSPROPEDITDLG
	.quad	DEBUGSTART_$KEYVALPROPEDITDLG
	.quad	DEBUGEND_$KEYVALPROPEDITDLG
	.quad	DEBUGSTART_$COLLECTIONPROPEDITFORM
	.quad	DEBUGEND_$COLLECTIONPROPEDITFORM
	.quad	DEBUGSTART_$FILEFILTERPROPEDITOR
	.quad	DEBUGEND_$FILEFILTERPROPEDITOR
	.quad	DEBUGSTART_$PAGESPROPEDITDLG
	.quad	DEBUGEND_$PAGESPROPEDITDLG
	.quad	DEBUGSTART_$IDEWINDOWINTF
	.quad	DEBUGEND_$IDEWINDOWINTF
	.quad	DEBUGSTART_$GROUPEDEDIT
	.quad	DEBUGEND_$GROUPEDEDIT
	.quad	DEBUGSTART_$CALENDARPOPUP
	.quad	DEBUGEND_$CALENDARPOPUP
	.quad	DEBUGSTART_$TIMEPOPUP
	.quad	DEBUGEND_$TIMEPOPUP
	.quad	DEBUGSTART_$SHELLCTRLS
	.quad	DEBUGEND_$SHELLCTRLS
	.quad	DEBUGSTART_$IDEIMAGESINTF
	.quad	DEBUGEND_$IDEIMAGESINTF
	.quad	DEBUGSTART_$IDEOPTIONSINTF
	.quad	DEBUGEND_$IDEOPTIONSINTF
	.quad	DEBUGSTART_$LAZIDEINTF
	.quad	DEBUGEND_$LAZIDEINTF
	.quad	DEBUGSTART_$LAZHELPHTML
	.quad	DEBUGEND_$LAZHELPHTML
	.quad	DEBUGSTART_$BASEIDEINTF
	.quad	DEBUGEND_$BASEIDEINTF
	.quad	DEBUGSTART_$IDEOPTEDITORINTF
	.quad	DEBUGEND_$IDEOPTEDITORINTF
	.quad	DEBUGSTART_$COMPOPTSINTF
	.quad	DEBUGEND_$COMPOPTSINTF
	.quad	DEBUGSTART_$PROJECTINTF
	.quad	DEBUGEND_$PROJECTINTF
	.quad	DEBUGSTART_$IDEEXTERNTOOLINTF
	.quad	DEBUGEND_$IDEEXTERNTOOLINTF
	.quad	DEBUGSTART_$SRCEDITORINTF
	.quad	DEBUGEND_$SRCEDITORINTF
	.quad	DEBUGSTART_$LAZHELPINTF
	.quad	DEBUGEND_$LAZHELPINTF
	.quad	DEBUGSTART_$MACROINTF
	.quad	DEBUGEND_$MACROINTF
	.quad	DEBUGSTART_$MACRODEFINTF
	.quad	DEBUGEND_$MACRODEFINTF
	.quad	DEBUGSTART_$EDITORSYNTAXHIGHLIGHTERDEF
	.quad	DEBUGEND_$EDITORSYNTAXHIGHLIGHTERDEF
	.quad	DEBUGSTART_$NEWITEMINTF
	.quad	DEBUGEND_$NEWITEMINTF
	.quad	DEBUGSTART_$PROJPACKINTF
	.quad	DEBUGEND_$PROJPACKINTF
	.quad	DEBUGSTART_$IDECOMMANDS
	.quad	DEBUGEND_$IDECOMMANDS
	.quad	DEBUGSTART_$TEXTTOOLS
	.quad	DEBUGEND_$TEXTTOOLS
	.quad	DEBUGSTART_$IDEDIALOGS
	.quad	DEBUGEND_$IDEDIALOGS
	.quad	DEBUGSTART_$LAZMSGDIALOGS
	.quad	DEBUGEND_$LAZMSGDIALOGS
# End asmlist al_procedures
# Begin asmlist al_globals

.section .data.rel.n_INITFINAL
	.balign 8
.globl	INITFINAL
	.type	INITFINAL,@object
INITFINAL:
	.quad	128,0
	.quad	INIT$_$SYSTEM
	.quad	0
	.quad	INIT$_$EXEINFO
	.quad	0
	.quad	INIT$_$LNFODWRF
	.quad	FINALIZE$_$LNFODWRF
	.quad	INIT$_$FPINTRES
	.quad	0,0
	.quad	FINALIZE$_$OBJPAS
	.quad	INIT$_$UNIX
	.quad	FINALIZE$_$UNIX
	.quad	INIT$_$DL
	.quad	0
	.quad	INIT$_$DYNLIBS
	.quad	0
	.quad	INIT$_$UNIXCP
	.quad	FINALIZE$_$UNIXCP
	.quad	INIT$_$CWSTRING
	.quad	FINALIZE$_$CWSTRING
	.quad	INIT$_$SYSUTILS
	.quad	FINALIZE$_$SYSUTILS
	.quad	INIT$_$TYPINFO
	.quad	FINALIZE$_$TYPINFO
	.quad	INIT$_$CLASSES
	.quad	FINALIZE$_$CLASSES
	.quad	INIT$_$GTK2DISABLELIBOVERLAY
	.quad	0
	.quad	INIT$_$GDK2X
	.quad	FINALIZE$_$GDK2X
	.quad	INIT$_$FPCADDS
	.quad	0,0
	.quad	FINALIZE$_$GETTEXT
	.quad	INIT$_$LAZUTF8
	.quad	FINALIZE$_$LAZUTF8
	.quad	INIT$_$LAZFILEUTILS
	.quad	FINALIZE$_$LAZFILEUTILS
	.quad	0
	.quad	FINALIZE$_$LAZLOGGERBASE
	.quad	0
	.quad	FINALIZE$_$DYNHASHARRAY
	.quad	INIT$_$LAZ_AVL_TREE
	.quad	FINALIZE$_$LAZ_AVL_TREE
	.quad	0
	.quad	FINALIZE$_$LAZTRACER
	.quad	INIT$_$LCLTYPE
	.quad	FINALIZE$_$LCLTYPE
	.quad	INIT$_$GRAPHTYPE
	.quad	0
	.quad	INIT$_$VARIANTS
	.quad	FINALIZE$_$VARIANTS
	.quad	INIT$_$LCLPROC
	.quad	FINALIZE$_$LCLPROC
	.quad	INIT$_$LRESOURCES
	.quad	FINALIZE$_$LRESOURCES
	.quad	INIT$_$FPIMAGE
	.quad	FINALIZE$_$FPIMAGE
	.quad	INIT$_$LCLPLATFORMDEF
	.quad	FINALIZE$_$LCLPLATFORMDEF
	.quad	INIT$_$FPIMGCMN
	.quad	0
	.quad	INIT$_$FPREADBMP
	.quad	0
	.quad	INIT$_$FPWRITEBMP
	.quad	0
	.quad	INIT$_$FPREADPNG
	.quad	0
	.quad	INIT$_$FPWRITEPNG
	.quad	0
	.quad	INIT$_$FPREADTIFF
	.quad	0
	.quad	INIT$_$FPWRITETIFF
	.quad	0
	.quad	INIT$_$LCLVERSION
	.quad	0
	.quad	INIT$_$FPCANVAS
	.quad	FINALIZE$_$FPCANVAS
	.quad	INIT$_$FPREADPNM
	.quad	0
	.quad	INIT$_$FPWRITEPNM
	.quad	0
	.quad	INIT$_$FPREADJPEG
	.quad	0
	.quad	INIT$_$FPWRITEJPEG
	.quad	0
	.quad	INIT$_$FPREADGIF
	.quad	0
	.quad	INIT$_$FILEUTIL
	.quad	FINALIZE$_$FILEUTIL
	.quad	INIT$_$PROCESS
	.quad	FINALIZE$_$PROCESS
	.quad	INIT$_$THEMES
	.quad	FINALIZE$_$THEMES
	.quad	INIT$_$GRAPHICS
	.quad	FINALIZE$_$GRAPHICS
	.quad	INIT$_$INTFGRAPHICS
	.quad	0
	.quad	INIT$_$LCLINTF
	.quad	FINALIZE$_$LCLINTF
	.quad	0
	.quad	FINALIZE$_$WSLCLCLASSES
	.quad	INIT$_$FPPIXLCANV
	.quad	FINALIZE$_$FPPIXLCANV
	.quad	INIT$_$RTTIUTILS
	.quad	FINALIZE$_$RTTIUTILS
	.quad	INIT$_$LAZLOGGER
	.quad	0,0
	.quad	FINALIZE$_$WSMENUS
	.quad	INIT$_$CLIPBRD
	.quad	FINALIZE$_$CLIPBRD
	.quad	INIT$_$CONTROLS
	.quad	FINALIZE$_$CONTROLS
	.quad	INIT$_$IMGLIST
	.quad	0
	.quad	INIT$_$ACTNLIST
	.quad	0
	.quad	INIT$_$MENUS
	.quad	FINALIZE$_$MENUS
	.quad	INIT$_$FORMS
	.quad	FINALIZE$_$FORMS
	.quad	INIT$_$STDCTRLS
	.quad	0
	.quad	INIT$_$BUTTONS
	.quad	FINALIZE$_$BUTTONS
	.quad	INIT$_$EXTCTRLS
	.quad	FINALIZE$_$EXTCTRLS
	.quad	INIT$_$LCLTASKDIALOG
	.quad	FINALIZE$_$LCLTASKDIALOG
	.quad	INIT$_$DIALOGS
	.quad	FINALIZE$_$DIALOGS
	.quad	INIT$_$COMCTRLS
	.quad	FINALIZE$_$COMCTRLS
	.quad	INIT$_$GTK2EXT
	.quad	FINALIZE$_$GTK2EXT
	.quad	INIT$_$GTK2EXTRA
	.quad	FINALIZE$_$GTK2EXTRA
	.quad	INIT$_$CALCFORM
	.quad	FINALIZE$_$CALCFORM
	.quad	INIT$_$GTK2GLOBALS
	.quad	FINALIZE$_$GTK2GLOBALS
	.quad	INIT$_$HTMLDEFS
	.quad	FINALIZE$_$HTMLDEFS
	.quad	INIT$_$MASKEDIT
	.quad	0
	.quad	INIT$_$LAZFILECACHE
	.quad	0,0
	.quad	FINALIZE$_$LAZ2_XMLUTILS
	.quad	INIT$_$LAZ2_DOM
	.quad	FINALIZE$_$LAZ2_DOM
	.quad	INIT$_$LAZ2_XMLREAD
	.quad	FINALIZE$_$LAZ2_XMLREAD
	.quad	INIT$_$UNITYWSCTRLS
	.quad	FINALIZE$_$UNITYWSCTRLS
	.quad	INIT$_$GTK2DEF
	.quad	FINALIZE$_$GTK2DEF
	.quad	INIT$_$GTK2FONTCACHE
	.quad	FINALIZE$_$GTK2FONTCACHE
	.quad	INIT$_$GTK2PROC
	.quad	FINALIZE$_$GTK2PROC
	.quad	INIT$_$GTK2WINAPIWINDOW
	.quad	0
	.quad	INIT$_$GTK2INT
	.quad	FINALIZE$_$GTK2INT
	.quad	INIT$_$INTERFACES
	.quad	FINALIZE$_$INTERFACES
	.quad	INIT$_$NETDB
	.quad	FINALIZE$_$NETDB
	.quad	INIT$_$LEVENTS
	.quad	FINALIZE$_$LEVENTS
	.quad	INIT$_$LTELNET
	.quad	FINALIZE$_$LTELNET
	.quad	INIT$_$LFTP
	.quad	FINALIZE$_$LFTP
	.quad	INIT$_$LMIMEWRAPPER
	.quad	FINALIZE$_$LMIMEWRAPPER
	.quad	INIT$_$LSMTP
	.quad	FINALIZE$_$LSMTP
	.quad	INIT$_$OPENSSL
	.quad	FINALIZE$_$OPENSSL
	.quad	INIT$_$LNETSSL
	.quad	FINALIZE$_$LNETSSL
	.quad	INIT$_$LHTTPUTIL
	.quad	FINALIZE$_$LHTTPUTIL
	.quad	INIT$_$LHTTP
	.quad	FINALIZE$_$LHTTP
	.quad	INIT$_$LNETCOMPONENTS
	.quad	FINALIZE$_$LNETCOMPONENTS
	.quad	INIT$_$DATEUTILS
	.quad	FINALIZE$_$DATEUTILS
	.quad	0
	.quad	FINALIZE$_$RESFACTORY
	.quad	INIT$_$STRINGTABLERESOURCE
	.quad	0
	.quad	INIT$_$GROUPICONRESOURCE
	.quad	0
	.quad	INIT$_$GROUPCURSORRESOURCE
	.quad	0,0
	.quad	FINALIZE$_$RESOURCE
	.quad	INIT$_$VERSIONRESOURCE
	.quad	0,0
	.quad	FINALIZE$_$DOS
	.quad	INIT$_$LCONVENCODING
	.quad	FINALIZE$_$LCONVENCODING
	.quad	INIT$_$PRINTERS
	.quad	0
	.quad	INIT$_$POSTSCRIPTCANVAS
	.quad	FINALIZE$_$POSTSCRIPTCANVAS
	.quad	INIT$_$CUPSDYN
	.quad	FINALIZE$_$CUPSDYN
	.quad	INIT$_$OSPRINTERS
	.quad	FINALIZE$_$OSPRINTERS
	.quad	INIT$_$KMESSAGEBOX
	.quad	0
	.quad	INIT$_$KCONTROLS
	.quad	0
	.quad	INIT$_$KEDITS
	.quad	0
	.quad	INIT$_$UNIT1
	.quad	FINALIZE$_$UNIT1
	.quad	INIT$_$LAZARUSPACKAGEINTF
	.quad	FINALIZE$_$LAZARUSPACKAGEINTF
	.quad	INIT$_$GROUPEDEDIT
	.quad	0
	.quad	INIT$_$EDITBTN
	.quad	0
	.quad	INIT$_$STRINGHASHLIST
	.quad	0
	.quad	INIT$_$PROPEDITUTILS
	.quad	FINALIZE$_$PROPEDITUTILS
	.quad	INIT$_$EDITORSYNTAXHIGHLIGHTERDEF
	.quad	FINALIZE$_$EDITORSYNTAXHIGHLIGHTERDEF
	.quad	INIT$_$IDEOPTEDITORINTF
	.quad	FINALIZE$_$IDEOPTEDITORINTF
	.quad	INIT$_$PROJECTINTF
	.quad	FINALIZE$_$PROJECTINTF
	.quad	INIT$_$IDEEXTERNTOOLINTF
	.quad	FINALIZE$_$IDEEXTERNTOOLINTF
	.quad	INIT$_$IDEIMAGESINTF
	.quad	FINALIZE$_$IDEIMAGESINTF
	.quad	INIT$_$IDECOMMANDS
	.quad	FINALIZE$_$IDECOMMANDS
	.quad	INIT$_$LAZIDEINTF
	.quad	FINALIZE$_$LAZIDEINTF
	.quad	INIT$_$IDEWINDOWINTF
	.quad	FINALIZE$_$IDEWINDOWINTF
	.quad	INIT$_$PROPEDITS
	.quad	FINALIZE$_$PROPEDITS
	.quad	INIT$_$LNETVISUALREG
	.quad	0
	.quad	INIT$_$LNETVISUAL
	.quad	0
.Le1:
	.size	INITFINAL, .Le1 - INITFINAL

.section .data.rel.n_FPC_THREADVARTABLES
	.balign 8
.globl	FPC_THREADVARTABLES
	.type	FPC_THREADVARTABLES,@object
FPC_THREADVARTABLES:
	.long	5
	.quad	THREADVARLIST_$SYSTEM$indirect
	.quad	THREADVARLIST_$CWSTRING$indirect
	.quad	THREADVARLIST_$CLASSES$indirect
	.quad	THREADVARLIST_$SOCKETS$indirect
	.quad	THREADVARLIST_$DOS$indirect
.Le2:
	.size	FPC_THREADVARTABLES, .Le2 - FPC_THREADVARTABLES

.section .data.rel.n_FPC_RESOURCESTRINGTABLES
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
	.type	FPC_RESOURCESTRINGTABLES,@object
FPC_RESOURCESTRINGTABLES:
	.quad	23
	.quad	RESSTR_$TYPINFO_$$_START$indirect
	.quad	RESSTR_$TYPINFO_$$_END$indirect
	.quad	RESSTR_$RTLCONSTS_$$_START$indirect
	.quad	RESSTR_$RTLCONSTS_$$_END$indirect
	.quad	RESSTR_$SYSCONST_$$_START$indirect
	.quad	RESSTR_$SYSCONST_$$_END$indirect
	.quad	RESSTR_$MATH_$$_START$indirect
	.quad	RESSTR_$MATH_$$_END$indirect
	.quad	RESSTR_$LCLSTRCONSTS_$$_START$indirect
	.quad	RESSTR_$LCLSTRCONSTS_$$_END$indirect
	.quad	RESSTR_$LAZUTILSSTRCONSTS_$$_START$indirect
	.quad	RESSTR_$LAZUTILSSTRCONSTS_$$_END$indirect
	.quad	RESSTR_$STRUTILS_$$_START$indirect
	.quad	RESSTR_$STRUTILS_$$_END$indirect
	.quad	RESSTR_$VARIANTS_$$_START$indirect
	.quad	RESSTR_$VARIANTS_$$_END$indirect
	.quad	RESSTR_$ZSTREAM_$$_START$indirect
	.quad	RESSTR_$ZSTREAM_$$_END$indirect
	.quad	RESSTR_$ZBASE_$$_START$indirect
	.quad	RESSTR_$ZBASE_$$_END$indirect
	.quad	RESSTR_$CONTNRS_$$_START$indirect
	.quad	RESSTR_$CONTNRS_$$_END$indirect
	.quad	RESSTR_$SYNCOBJS_$$_START$indirect
	.quad	RESSTR_$SYNCOBJS_$$_END$indirect
	.quad	RESSTR_$PROCESS_$$_START$indirect
	.quad	RESSTR_$PROCESS_$$_END$indirect
	.quad	RESSTR_$CUSTAPP_$$_START$indirect
	.quad	RESSTR_$CUSTAPP_$$_END$indirect
	.quad	RESSTR_$INIFILES_$$_START$indirect
	.quad	RESSTR_$INIFILES_$$_END$indirect
	.quad	RESSTR_$OPENSSL_$$_START$indirect
	.quad	RESSTR_$OPENSSL_$$_END$indirect
	.quad	RESSTR_$RESOURCE_$$_START$indirect
	.quad	RESSTR_$RESOURCE_$$_END$indirect
	.quad	RESSTR_$VERSIONTYPES_$$_START$indirect
	.quad	RESSTR_$VERSIONTYPES_$$_END$indirect
	.quad	RESSTR_$RESFACTORY_$$_START$indirect
	.quad	RESSTR_$RESFACTORY_$$_END$indirect
	.quad	RESSTR_$STRINGTABLERESOURCE_$$_START$indirect
	.quad	RESSTR_$STRINGTABLERESOURCE_$$_END$indirect
	.quad	RESSTR_$KRES_$$_START$indirect
	.quad	RESSTR_$KRES_$$_END$indirect
	.quad	RESSTR_$PRINTER4LAZSTRCONST_$$_START$indirect
	.quad	RESSTR_$PRINTER4LAZSTRCONST_$$_END$indirect
	.quad	RESSTR_$OBJINSPSTRCONSTS_$$_START$indirect
	.quad	RESSTR_$OBJINSPSTRCONSTS_$$_END$indirect
.Le3:
	.size	FPC_RESOURCESTRINGTABLES, .Le3 - FPC_RESOURCESTRINGTABLES

.section .data.rel.n_FPC_WIDEINITTABLES
	.balign 8
.globl	FPC_WIDEINITTABLES
	.type	FPC_WIDEINITTABLES,@object
FPC_WIDEINITTABLES:
	.quad	0
.Le4:
	.size	FPC_WIDEINITTABLES, .Le4 - FPC_WIDEINITTABLES

.section .data.rel.n_FPC_RESSTRINITTABLES
	.balign 8
.globl	FPC_RESSTRINITTABLES
	.type	FPC_RESSTRINITTABLES,@object
FPC_RESSTRINITTABLES:
	.quad	0
.Le5:
	.size	FPC_RESSTRINITTABLES, .Le5 - FPC_RESSTRINITTABLES

.section .fpc.n_version,"aw"
	.balign 16
	.type	__fpc_ident,@object
__fpc_ident:
	.ascii	"FPC 3.3.1 [2019/12/27] for x86_64 - Linux"
.Le6:
	.size	__fpc_ident, .Le6 - __fpc_ident

.section .data.rel.n___stklen
	.balign 8
.globl	__stklen
	.type	__stklen,@object
__stklen:
	.quad	8388608
.Le7:
	.size	__stklen, .Le7 - __stklen

.section .data.rel.n___heapsize
	.balign 8
.globl	__heapsize
	.type	__heapsize,@object
__heapsize:
	.quad	0
.Le8:
	.size	__heapsize, .Le8 - __heapsize

.section .data.rel.n___fpc_valgrind
	.balign 8
.globl	__fpc_valgrind
	.type	__fpc_valgrind,@object
__fpc_valgrind:
	.byte	0
.Le9:
	.size	__fpc_valgrind, .Le9 - __fpc_valgrind

.section .data.rel.n_FPC_RESLOCATION
	.balign 8
.globl	FPC_RESLOCATION
	.type	FPC_RESLOCATION,@object
FPC_RESLOCATION:
	.quad	FPC_RESSYMBOL
.Le10:
	.size	FPC_RESLOCATION, .Le10 - FPC_RESLOCATION
# End asmlist al_globals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc10:
	.long	.Lc12-.Lc11
.Lc11:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc12:
	.long	.Lc14-.Lc13
.Lc13:
	.quad	.Lc10
	.quad	.Lc2
	.quad	.Lc1-.Lc2
	.byte	4
	.long	.Lc3-.Lc2
	.byte	7
	.uleb128	16
	.byte	4
	.long	.Lc4-.Lc3
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc5-.Lc4
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc6-.Lc5
	.byte	13
	.uleb128	6
	.byte	4
	.long	.Lc7-.Lc6
	.byte	13
	.uleb128	7
	.byte	4
	.long	.Lc8-.Lc7
	.byte	6
	.uleb128	6
	.byte	4
	.long	.Lc9-.Lc8
	.byte	14
	.uleb128	8
	.balign 4,0
.Lc14:
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info

.section .debug_info
	.type	.Ldebug_info0,@object
.Ldebug_info0:
	.long	.Ledebug_info0-.Lf2
.Lf2:
	.short	2
	.long	.Ldebug_abbrev0
	.byte	8
	.uleb128	1
	.ascii	"distenc.lpr\000"
	.ascii	"Free Pascal 3.3.1 2019/12/27\000"
	.ascii	"/home/sgm/lazproj/distenc/\000"
	.byte	9
	.byte	3
	.long	.Ldebug_line0
	.quad	DEBUGSTART_$P$DISTENC
	.quad	DEBUGEND_$P$DISTENC
# Syms - Begin Staticsymtable
# Symbol SYSTEM
# Symbol LNFODWRF
# Symbol FPINTRES
# Symbol OBJPAS
# Symbol INTERFACES
# Symbol FORMS
# Symbol UNIT1
# Symbol LNETVISUAL
# Symbol DISTENC
# Symbol main
# Symbol SI_C
# Syms - End Staticsymtable
# Procdef $main; Register;
	.uleb128	2
	.ascii	"main\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	main
	.quad	.Lt1
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit STRINGS has index 4
# Defs - End unit STRINGS has index 4
# Defs - Begin unit EXEINFO has index 3
# Defs - End unit EXEINFO has index 3
# Defs - Begin unit LNFODWRF has index 2
# Defs - End unit LNFODWRF has index 2
# Defs - Begin unit FPINTRES has index 5
# Defs - End unit FPINTRES has index 5
# Defs - Begin unit OBJPAS has index 6
# Defs - End unit OBJPAS has index 6
# Defs - Begin unit UNIXTYPE has index 15
# Defs - End unit UNIXTYPE has index 15
# Defs - Begin unit BASEUNIX has index 12
# Defs - End unit BASEUNIX has index 12
# Defs - Begin unit CTYPES has index 13
# Defs - End unit CTYPES has index 13
# Defs - Begin unit UNIXUTIL has index 19
# Defs - End unit UNIXUTIL has index 19
# Defs - Begin unit SYSCALL has index 20
# Defs - End unit SYSCALL has index 20
# Defs - Begin unit UNIX has index 14
# Defs - End unit UNIX has index 14
# Defs - Begin unit INITC has index 16
# Defs - End unit INITC has index 16
# Defs - Begin unit DL has index 21
# Defs - End unit DL has index 21
# Defs - Begin unit DYNLIBS has index 17
# Defs - End unit DYNLIBS has index 17
# Defs - Begin unit UNIXCP has index 18
# Defs - End unit UNIXCP has index 18
# Defs - Begin unit CWSTRING has index 11
# Defs - End unit CWSTRING has index 11
# Defs - Begin unit LINUX has index 30
# Defs - End unit LINUX has index 30
# Defs - Begin unit ERRORS has index 31
# Defs - End unit ERRORS has index 31
# Defs - Begin unit SYSCONST has index 32
# Defs - End unit SYSCONST has index 32
# Defs - Begin unit SYSUTILS has index 25
# Defs - End unit SYSUTILS has index 25
# Defs - Begin unit MATH has index 33
# Defs - End unit MATH has index 33
# Defs - Begin unit TYPES has index 26
# Defs - End unit TYPES has index 26
# Defs - Begin unit RTLCONSTS has index 28
# Defs - End unit RTLCONSTS has index 28
# Defs - Begin unit TYPINFO has index 27
# Defs - End unit TYPINFO has index 27
# Defs - Begin unit SORTBASE has index 29
# Defs - End unit SORTBASE has index 29
# Defs - Begin unit CLASSES has index 24
# Defs - End unit CLASSES has index 24
# Defs - Begin unit GTK2DISABLELIBOVERLAY has index 22
# Defs - End unit GTK2DISABLELIBOVERLAY has index 22
# Defs - Begin unit X has index 36
# Defs - End unit X has index 36
# Defs - Begin unit XLIB has index 34
# Defs - End unit XLIB has index 34
# Defs - Begin unit XATOM has index 35
# Defs - End unit XATOM has index 35
# Defs - Begin unit GLIB2 has index 41
# Defs - End unit GLIB2 has index 41
# Defs - Begin unit GDK2PIXBUF has index 38
# Defs - End unit GDK2PIXBUF has index 38
# Defs - Begin unit PANGO has index 42
# Defs - End unit PANGO has index 42
# Defs - Begin unit CAIRO has index 79
# Defs - End unit CAIRO has index 79
# Defs - Begin unit GDK2 has index 40
# Defs - End unit GDK2 has index 40
# Defs - Begin unit XRENDER has index 78
# Defs - End unit XRENDER has index 78
# Defs - Begin unit GDK2X has index 37
# Defs - End unit GDK2X has index 37
# Defs - Begin unit ATK has index 80
# Defs - End unit ATK has index 80
# Defs - Begin unit GTK2 has index 39
# Defs - End unit GTK2 has index 39
# Defs - Begin unit FPCADDS has index 82
# Defs - End unit FPCADDS has index 82
# Defs - Begin unit STRUTILS has index 83
# Defs - End unit STRUTILS has index 83
# Defs - Begin unit GETTEXT has index 84
# Defs - End unit GETTEXT has index 84
# Defs - Begin unit LAZUTF8 has index 44
# Defs - End unit LAZUTF8 has index 44
# Defs - Begin unit LAZUTILSSTRCONSTS has index 81
# Defs - End unit LAZUTILSSTRCONSTS has index 81
# Defs - Begin unit LAZFILEUTILS has index 43
# Defs - End unit LAZFILEUTILS has index 43
# Defs - Begin unit LAZMETHODLIST has index 86
# Defs - End unit LAZMETHODLIST has index 86
# Defs - Begin unit LAZCLASSES has index 85
# Defs - End unit LAZCLASSES has index 85
# Defs - Begin unit LAZLOGGERBASE has index 48
# Defs - End unit LAZLOGGERBASE has index 48
# Defs - Begin unit DYNHASHARRAY has index 45
# Defs - End unit DYNHASHARRAY has index 45
# Defs - Begin unit LAZ_AVL_TREE has index 87
# Defs - End unit LAZ_AVL_TREE has index 87
# Defs - Begin unit MAPS has index 46
# Defs - End unit MAPS has index 46
# Defs - Begin unit FGL has index 88
# Defs - End unit FGL has index 88
# Defs - Begin unit INTEGERLIST has index 47
# Defs - End unit INTEGERLIST has index 47
# Defs - Begin unit LAZUTILITIES has index 90
# Defs - End unit LAZUTILITIES has index 90
# Defs - Begin unit LAZTRACER has index 89
# Defs - End unit LAZTRACER has index 89
# Defs - Begin unit LAZSTRINGUTILS has index 49
# Defs - End unit LAZSTRINGUTILS has index 49
# Defs - Begin unit LCLTYPE has index 56
# Defs - End unit LCLTYPE has index 56
# Defs - Begin unit GRAPHTYPE has index 57
# Defs - End unit GRAPHTYPE has index 57
# Defs - Begin unit LMESSAGES has index 53
# Defs - End unit LMESSAGES has index 53
# Defs - Begin unit VARUTILS has index 102
# Defs - End unit VARUTILS has index 102
# Defs - Begin unit VARIANTS has index 98
# Defs - End unit VARIANTS has index 98
# Defs - Begin unit LAZUTF8CLASSES has index 101
# Defs - End unit LAZUTF8CLASSES has index 101
# Defs - Begin unit LCLSTRCONSTS has index 52
# Defs - End unit LCLSTRCONSTS has index 52
# Defs - Begin unit LCLPROC has index 54
# Defs - End unit LCLPROC has index 54
# Defs - Begin unit LAZDBGLOG has index 104
# Defs - End unit LAZDBGLOG has index 104
# Defs - Begin unit AVGLVLTREE has index 103
# Defs - End unit AVGLVLTREE has index 103
# Defs - Begin unit LAZCONFIGSTORAGE has index 99
# Defs - End unit LAZCONFIGSTORAGE has index 99
# Defs - Begin unit DYNQUEUE has index 100
# Defs - End unit DYNQUEUE has index 100
# Defs - Begin unit LRESOURCES has index 91
# Defs - End unit LRESOURCES has index 91
# Defs - Begin unit FPIMAGE has index 107
# Defs - End unit FPIMAGE has index 107
# Defs - Begin unit LCLPLATFORMDEF has index 67
# Defs - End unit LCLPLATFORMDEF has index 67
# Defs - Begin unit GRAPHMATH has index 58
# Defs - End unit GRAPHMATH has index 58
# Defs - Begin unit FPIMGCMN has index 119
# Defs - End unit FPIMGCMN has index 119
# Defs - Begin unit BMPCOMN has index 111
# Defs - End unit BMPCOMN has index 111
# Defs - Begin unit FPREADBMP has index 109
# Defs - End unit FPREADBMP has index 109
# Defs - Begin unit FPWRITEBMP has index 110
# Defs - End unit FPWRITEBMP has index 110
# Defs - Begin unit PNGCOMN has index 120
# Defs - End unit PNGCOMN has index 120
# Defs - Begin unit ZBASE has index 122
# Defs - End unit ZBASE has index 122
# Defs - Begin unit CRC has index 124
# Defs - End unit CRC has index 124
# Defs - Begin unit TREES has index 127
# Defs - End unit TREES has index 127
# Defs - Begin unit ADLER has index 128
# Defs - End unit ADLER has index 128
# Defs - Begin unit ZDEFLATE has index 125
# Defs - End unit ZDEFLATE has index 125
# Defs - Begin unit INFUTIL has index 130
# Defs - End unit INFUTIL has index 130
# Defs - Begin unit INFFAST has index 133
# Defs - End unit INFFAST has index 133
# Defs - Begin unit INFCODES has index 131
# Defs - End unit INFCODES has index 131
# Defs - Begin unit INFTREES has index 132
# Defs - End unit INFTREES has index 132
# Defs - Begin unit INFBLOCK has index 129
# Defs - End unit INFBLOCK has index 129
# Defs - Begin unit ZINFLATE has index 126
# Defs - End unit ZINFLATE has index 126
# Defs - Begin unit GZIO has index 123
# Defs - End unit GZIO has index 123
# Defs - Begin unit ZSTREAM has index 121
# Defs - End unit ZSTREAM has index 121
# Defs - Begin unit FPREADPNG has index 112
# Defs - End unit FPREADPNG has index 112
# Defs - Begin unit FPWRITEPNG has index 113
# Defs - End unit FPWRITEPNG has index 113
# Defs - Begin unit FPTIFFCMN has index 116
# Defs - End unit FPTIFFCMN has index 116
# Defs - Begin unit FPREADTIFF has index 114
# Defs - End unit FPREADTIFF has index 114
# Defs - Begin unit FPWRITETIFF has index 115
# Defs - End unit FPWRITETIFF has index 115
# Defs - Begin unit LAZVERSION has index 134
# Defs - End unit LAZVERSION has index 134
# Defs - Begin unit LCLVERSION has index 117
# Defs - End unit LCLVERSION has index 117
# Defs - Begin unit ICNSTYPES has index 118
# Defs - End unit ICNSTYPES has index 118
# Defs - Begin unit CONTNRS has index 135
# Defs - End unit CONTNRS has index 135
# Defs - Begin unit CLIPPING has index 144
# Defs - End unit CLIPPING has index 144
# Defs - Begin unit FPCANVAS has index 136
# Defs - End unit FPCANVAS has index 136
# Defs - Begin unit FPREADPNM has index 137
# Defs - End unit FPREADPNM has index 137
# Defs - Begin unit FPWRITEPNM has index 138
# Defs - End unit FPWRITEPNM has index 138
# Defs - Begin unit JDEFERR has index 150
# Defs - End unit JDEFERR has index 150
# Defs - Begin unit JMORECFG has index 149
# Defs - End unit JMORECFG has index 149
# Defs - Begin unit JPEGLIB has index 145
# Defs - End unit JPEGLIB has index 145
# Defs - Begin unit JINCLUDE has index 151
# Defs - End unit JINCLUDE has index 151
# Defs - Begin unit JCOMAPI has index 156
# Defs - End unit JCOMAPI has index 156
# Defs - Begin unit JERROR has index 152
# Defs - End unit JERROR has index 152
# Defs - Begin unit JUTILS has index 157
# Defs - End unit JUTILS has index 157
# Defs - Begin unit JMEMNOBS has index 158
# Defs - End unit JMEMNOBS has index 158
# Defs - Begin unit JMEMMGR has index 153
# Defs - End unit JMEMMGR has index 153
# Defs - Begin unit JDMARKER has index 154
# Defs - End unit JDMARKER has index 154
# Defs - Begin unit JDINPUT has index 155
# Defs - End unit JDINPUT has index 155
# Defs - Begin unit JDAPIMIN has index 146
# Defs - End unit JDAPIMIN has index 146
# Defs - Begin unit JDATASRC has index 147
# Defs - End unit JDATASRC has index 147
# Defs - Begin unit JDCOLOR has index 160
# Defs - End unit JDCOLOR has index 160
# Defs - Begin unit JDSAMPLE has index 161
# Defs - End unit JDSAMPLE has index 161
# Defs - Begin unit JDPOSTCT has index 162
# Defs - End unit JDPOSTCT has index 162
# Defs - Begin unit JDCT has index 171
# Defs - End unit JDCT has index 171
# Defs - Begin unit JIDCTFST has index 172
# Defs - End unit JIDCTFST has index 172
# Defs - Begin unit JIDCTINT has index 173
# Defs - End unit JIDCTINT has index 173
# Defs - Begin unit JIDCTFLT has index 174
# Defs - End unit JIDCTFLT has index 174
# Defs - Begin unit JIDCTRED has index 175
# Defs - End unit JIDCTRED has index 175
# Defs - Begin unit JDDCTMGR has index 163
# Defs - End unit JDDCTMGR has index 163
# Defs - Begin unit JDHUFF has index 165
# Defs - End unit JDHUFF has index 165
# Defs - Begin unit JDPHUFF has index 164
# Defs - End unit JDPHUFF has index 164
# Defs - Begin unit JDCOEFCT has index 166
# Defs - End unit JDCOEFCT has index 166
# Defs - Begin unit JQUANT2 has index 169
# Defs - End unit JQUANT2 has index 169
# Defs - Begin unit JDMAINCT has index 167
# Defs - End unit JDMAINCT has index 167
# Defs - Begin unit JQUANT1 has index 168
# Defs - End unit JQUANT1 has index 168
# Defs - Begin unit JDMERGE has index 170
# Defs - End unit JDMERGE has index 170
# Defs - Begin unit JDMASTER has index 159
# Defs - End unit JDMASTER has index 159
# Defs - Begin unit JDAPISTD has index 148
# Defs - End unit JDAPISTD has index 148
# Defs - Begin unit FPREADJPEG has index 139
# Defs - End unit FPREADJPEG has index 139
# Defs - Begin unit JCMARKER has index 181
# Defs - End unit JCMARKER has index 181
# Defs - Begin unit JCAPIMIN has index 177
# Defs - End unit JCAPIMIN has index 177
# Defs - Begin unit JCHUFF has index 183
# Defs - End unit JCHUFF has index 183
# Defs - Begin unit JCPHUFF has index 182
# Defs - End unit JCPHUFF has index 182
# Defs - Begin unit JCMASTER has index 184
# Defs - End unit JCMASTER has index 184
# Defs - Begin unit JCCOLOR has index 185
# Defs - End unit JCCOLOR has index 185
# Defs - Begin unit JCSAMPLE has index 186
# Defs - End unit JCSAMPLE has index 186
# Defs - Begin unit JCPREPCT has index 187
# Defs - End unit JCPREPCT has index 187
# Defs - Begin unit JFDCTINT has index 191
# Defs - End unit JFDCTINT has index 191
# Defs - Begin unit JFDCTFST has index 192
# Defs - End unit JFDCTFST has index 192
# Defs - Begin unit JFDCTFLT has index 193
# Defs - End unit JFDCTFLT has index 193
# Defs - Begin unit JCDCTMGR has index 188
# Defs - End unit JCDCTMGR has index 188
# Defs - Begin unit JCCOEFCT has index 189
# Defs - End unit JCCOEFCT has index 189
# Defs - Begin unit JCMAINCT has index 190
# Defs - End unit JCMAINCT has index 190
# Defs - Begin unit JCINIT has index 180
# Defs - End unit JCINIT has index 180
# Defs - Begin unit JCAPISTD has index 176
# Defs - End unit JCAPISTD has index 176
# Defs - Begin unit JDATADST has index 178
# Defs - End unit JDATADST has index 178
# Defs - Begin unit JCPARAM has index 179
# Defs - End unit JCPARAM has index 179
# Defs - Begin unit FPWRITEJPEG has index 140
# Defs - End unit FPWRITEJPEG has index 140
# Defs - Begin unit FPREADGIF has index 141
# Defs - End unit FPREADGIF has index 141
# Defs - Begin unit WSREFERENCES has index 143
# Defs - End unit WSREFERENCES has index 143
# Defs - Begin unit SYNCOBJS has index 194
# Defs - End unit SYNCOBJS has index 194
# Defs - Begin unit LCLRESCACHE has index 142
# Defs - End unit LCLRESCACHE has index 142
# Defs - Begin unit GRAPHICS has index 59
# Defs - End unit GRAPHICS has index 59
# Defs - Begin unit INTFGRAPHICS has index 108
# Defs - End unit INTFGRAPHICS has index 108
# Defs - Begin unit TMSCHEMA has index 195
# Defs - End unit TMSCHEMA has index 195
# Defs - Begin unit THEMES has index 61
# Defs - End unit THEMES has index 61
# Defs - Begin unit INTERFACEBASE has index 68
# Defs - End unit INTERFACEBASE has index 68
# Defs - Begin unit MASKS has index 196
# Defs - End unit MASKS has index 196
# Defs - Begin unit FILEUTIL has index 97
# Defs - End unit FILEUTIL has index 97
# Defs - Begin unit TERMIO has index 199
# Defs - End unit TERMIO has index 199
# Defs - Begin unit PIPES has index 198
# Defs - End unit PIPES has index 198
# Defs - Begin unit PROCESS has index 197
# Defs - End unit PROCESS has index 197
# Defs - Begin unit UTF8PROCESS has index 105
# Defs - End unit UTF8PROCESS has index 105
# Defs - Begin unit LAZSYSUTILS has index 106
# Defs - End unit LAZSYSUTILS has index 106
# Defs - Begin unit LCLINTF has index 55
# Defs - End unit LCLINTF has index 55
# Defs - Begin unit SINGLEINSTANCE has index 205
# Defs - End unit SINGLEINSTANCE has index 205
# Defs - Begin unit CUSTAPP has index 200
# Defs - End unit CUSTAPP has index 200
# Defs - Begin unit WSLCLCLASSES has index 69
# Defs - End unit WSLCLCLASSES has index 69
# Defs - Begin unit LCLCLASSES has index 93
# Defs - End unit LCLCLASSES has index 93
# Defs - Begin unit PIXTOOLS has index 208
# Defs - End unit PIXTOOLS has index 208
# Defs - Begin unit ELLIPSES has index 209
# Defs - End unit ELLIPSES has index 209
# Defs - Begin unit FPPIXLCANV has index 207
# Defs - End unit FPPIXLCANV has index 207
# Defs - Begin unit FPIMGCANV has index 206
# Defs - End unit FPIMGCANV has index 206
# Defs - Begin unit RTTIUTILS has index 214
# Defs - End unit RTTIUTILS has index 214
# Defs - Begin unit PROPERTYSTORAGE has index 213
# Defs - End unit PROPERTYSTORAGE has index 213
# Defs - Begin unit UITYPES has index 96
# Defs - End unit UITYPES has index 96
# Defs - Begin unit WSFACTORY has index 212
# Defs - End unit WSFACTORY has index 212
# Defs - Begin unit WSCONTROLS has index 70
# Defs - End unit WSCONTROLS has index 70
# Defs - Begin unit CONTROLS has index 51
# Defs - End unit CONTROLS has index 51
# Defs - Begin unit WSPROC has index 211
# Defs - End unit WSPROC has index 211
# Defs - Begin unit WSIMGLIST has index 210
# Defs - End unit WSIMGLIST has index 210
# Defs - Begin unit IMGLIST has index 204
# Defs - End unit IMGLIST has index 204
# Defs - Begin unit ACTNLIST has index 202
# Defs - End unit ACTNLIST has index 202
# Defs - Begin unit LAZLOGGER has index 216
# Defs - End unit LAZLOGGER has index 216
# Defs - Begin unit WSMENUS has index 215
# Defs - End unit WSMENUS has index 215
# Defs - Begin unit MENUS has index 60
# Defs - End unit MENUS has index 60
# Defs - Begin unit CUSTOMTIMER has index 201
# Defs - End unit CUSTOMTIMER has index 201
# Defs - Begin unit FASTHTMLPARSER has index 217
# Defs - End unit FASTHTMLPARSER has index 217
# Defs - Begin unit CLIPBRD has index 94
# Defs - End unit CLIPBRD has index 94
# Defs - Begin unit HELPINTFS has index 203
# Defs - End unit HELPINTFS has index 203
# Defs - Begin unit WSFORMS has index 218
# Defs - End unit WSFORMS has index 218
# Defs - Begin unit FORMS has index 8
# Defs - End unit FORMS has index 8
# Defs - Begin unit TEXTSTRINGS has index 220
# Defs - End unit TEXTSTRINGS has index 220
# Defs - Begin unit EXTENDEDSTRINGS has index 221
# Defs - End unit EXTENDEDSTRINGS has index 221
# Defs - Begin unit WSSTDCTRLS has index 222
# Defs - End unit WSSTDCTRLS has index 222
# Defs - Begin unit STDCTRLS has index 63
# Defs - End unit STDCTRLS has index 63
# Defs - Begin unit IMAGELISTCACHE has index 219
# Defs - End unit IMAGELISTCACHE has index 219
# Defs - Begin unit WSBUTTONS has index 223
# Defs - End unit WSBUTTONS has index 223
# Defs - Begin unit BUTTONS has index 62
# Defs - End unit BUTTONS has index 62
# Defs - Begin unit POPUPNOTIFIER has index 224
# Defs - End unit POPUPNOTIFIER has index 224
# Defs - Begin unit WSEXTCTRLS has index 225
# Defs - End unit WSEXTCTRLS has index 225
# Defs - Begin unit EXTCTRLS has index 66
# Defs - End unit EXTCTRLS has index 66
# Defs - Begin unit BUTTONPANEL has index 92
# Defs - End unit BUTTONPANEL has index 92
# Defs - Begin unit LCLTASKDIALOG has index 95
# Defs - End unit LCLTASKDIALOG has index 95
# Defs - Begin unit WSDIALOGS has index 226
# Defs - End unit WSDIALOGS has index 226
# Defs - Begin unit DIALOGS has index 50
# Defs - End unit DIALOGS has index 50
# Defs - Begin unit WSCHECKLST has index 227
# Defs - End unit WSCHECKLST has index 227
# Defs - Begin unit CHECKLST has index 64
# Defs - End unit CHECKLST has index 64
# Defs - Begin unit TOOLWIN has index 228
# Defs - End unit TOOLWIN has index 228
# Defs - Begin unit WSTOOLWIN has index 230
# Defs - End unit WSTOOLWIN has index 230
# Defs - Begin unit WSCOMCTRLS has index 229
# Defs - End unit WSCOMCTRLS has index 229
# Defs - Begin unit COMCTRLS has index 65
# Defs - End unit COMCTRLS has index 65
# Defs - Begin unit GTK2EXT has index 231
# Defs - End unit GTK2EXT has index 231
# Defs - Begin unit GTK2EXTRA has index 76
# Defs - End unit GTK2EXTRA has index 76
# Defs - Begin unit WSCALENDAR has index 237
# Defs - End unit WSCALENDAR has index 237
# Defs - Begin unit CALENDAR has index 235
# Defs - End unit CALENDAR has index 235
# Defs - Begin unit WSEXTDLGS has index 238
# Defs - End unit WSEXTDLGS has index 238
# Defs - Begin unit CALCFORM has index 236
# Defs - End unit CALCFORM has index 236
# Defs - Begin unit EXTDLGS has index 232
# Defs - End unit EXTDLGS has index 232
# Defs - Begin unit MESSAGES has index 239
# Defs - End unit MESSAGES has index 239
# Defs - Begin unit LCLMESSAGEGLUE has index 233
# Defs - End unit LCLMESSAGEGLUE has index 233
# Defs - Begin unit LCLMEMMANAGER has index 240
# Defs - End unit LCLMEMMANAGER has index 240
# Defs - Begin unit GTK2GLOBALS has index 72
# Defs - End unit GTK2GLOBALS has index 72
# Defs - Begin unit GTK2DEF has index 74
# Defs - End unit GTK2DEF has index 74
# Defs - Begin unit GTK2FONTCACHE has index 75
# Defs - End unit GTK2FONTCACHE has index 75
# Defs - Begin unit GTK2DEBUG has index 234
# Defs - End unit GTK2DEBUG has index 234
# Defs - Begin unit GTK2WSCONTROLS has index 243
# Defs - End unit GTK2WSCONTROLS has index 243
# Defs - Begin unit GTK2WSPRIVATE has index 241
# Defs - End unit GTK2WSPRIVATE has index 241
# Defs - Begin unit URIPARSER has index 242
# Defs - End unit URIPARSER has index 242
# Defs - Begin unit GTK2PROC has index 73
# Defs - End unit GTK2PROC has index 73
# Defs - Begin unit GTK2WINAPIWINDOW has index 71
# Defs - End unit GTK2WINAPIWINDOW has index 71
# Defs - Begin unit LAZLINKEDLIST has index 244
# Defs - End unit LAZLINKEDLIST has index 244
# Defs - Begin unit GTK2MSGQUEUE has index 77
# Defs - End unit GTK2MSGQUEUE has index 77
# Defs - Begin unit WSSPIN has index 252
# Defs - End unit WSSPIN has index 252
# Defs - Begin unit SPIN has index 249
# Defs - End unit SPIN has index 249
# Defs - Begin unit HTMLDEFS has index 253
# Defs - End unit HTMLDEFS has index 253
# Defs - Begin unit MASKEDIT has index 254
# Defs - End unit MASKEDIT has index 254
# Defs - Begin unit DYNAMICARRAY has index 255
# Defs - End unit DYNAMICARRAY has index 255
# Defs - Begin unit LAZFILECACHE has index 258
# Defs - End unit LAZFILECACHE has index 258
# Defs - Begin unit LAZ2_XMLUTILS has index 262
# Defs - End unit LAZ2_XMLUTILS has index 262
# Defs - Begin unit LAZ2_DOM has index 259
# Defs - End unit LAZ2_DOM has index 259
# Defs - Begin unit LAZ2_XMLREAD has index 260
# Defs - End unit LAZ2_XMLREAD has index 260
# Defs - Begin unit LAZ2_XMLWRITE has index 261
# Defs - End unit LAZ2_XMLWRITE has index 261
# Defs - Begin unit LAZ2_XMLCFG has index 256
# Defs - End unit LAZ2_XMLCFG has index 256
# Defs - Begin unit LCSVUTILS has index 257
# Defs - End unit LCSVUTILS has index 257
# Defs - Begin unit WSGRIDS has index 263
# Defs - End unit WSGRIDS has index 263
# Defs - Begin unit GRIDS has index 250
# Defs - End unit GRIDS has index 250
# Defs - Begin unit WSPAIRSPLITTER has index 264
# Defs - End unit WSPAIRSPLITTER has index 264
# Defs - Begin unit PAIRSPLITTER has index 251
# Defs - End unit PAIRSPLITTER has index 251
# Defs - Begin unit GTK2CELLRENDERER has index 278
# Defs - End unit GTK2CELLRENDERER has index 278
# Defs - Begin unit GTK2WSSTDCTRLS has index 246
# Defs - End unit GTK2WSSTDCTRLS has index 246
# Defs - Begin unit GTK2WSBUTTONS has index 265
# Defs - End unit GTK2WSBUTTONS has index 265
# Defs - Begin unit GTK2WSCALENDAR has index 266
# Defs - End unit GTK2WSCALENDAR has index 266
# Defs - Begin unit GTK2WSCHECKLST has index 247
# Defs - End unit GTK2WSCHECKLST has index 247
# Defs - Begin unit GTK2LISTVIEWTREEMODEL has index 279
# Defs - End unit GTK2LISTVIEWTREEMODEL has index 279
# Defs - Begin unit GTK2WSCOMCTRLS has index 267
# Defs - End unit GTK2WSCOMCTRLS has index 267
# Defs - Begin unit GTK2WSDIALOGS has index 268
# Defs - End unit GTK2WSDIALOGS has index 268
# Defs - Begin unit GTK2WSEXTCTRLS has index 269
# Defs - End unit GTK2WSEXTCTRLS has index 269
# Defs - Begin unit GTK2WSEXTDLGS has index 270
# Defs - End unit GTK2WSEXTDLGS has index 270
# Defs - Begin unit GTK2WSFORMS has index 271
# Defs - End unit GTK2WSFORMS has index 271
# Defs - Begin unit GTK2WSGRIDS has index 272
# Defs - End unit GTK2WSGRIDS has index 272
# Defs - Begin unit GTK2WSIMGLIST has index 273
# Defs - End unit GTK2WSIMGLIST has index 273
# Defs - Begin unit GTK2WSMENUS has index 274
# Defs - End unit GTK2WSMENUS has index 274
# Defs - Begin unit GTK2WSSPIN has index 275
# Defs - End unit GTK2WSSPIN has index 275
# Defs - Begin unit GTK2WSPAIRSPLITTER has index 276
# Defs - End unit GTK2WSPAIRSPLITTER has index 276
# Defs - Begin unit UNITYWSCTRLS has index 277
# Defs - End unit UNITYWSCTRLS has index 277
# Defs - Begin unit GTK2WSFACTORY has index 245
# Defs - End unit GTK2WSFACTORY has index 245
# Defs - Begin unit GTK2THEMES has index 248
# Defs - End unit GTK2THEMES has index 248
# Defs - Begin unit GTK2INT has index 23
# Defs - End unit GTK2INT has index 23
# Defs - Begin unit INTERFACES has index 7
# Defs - End unit INTERFACES has index 7
# Defs - Begin unit SOCKETS has index 295
# Defs - End unit SOCKETS has index 295
# Defs - Begin unit NETDB has index 294
# Defs - End unit NETDB has index 294
# Defs - Begin unit LCOMMON has index 293
# Defs - End unit LCOMMON has index 293
# Defs - Begin unit LEVENTS has index 292
# Defs - End unit LEVENTS has index 292
# Defs - Begin unit LNET has index 281
# Defs - End unit LNET has index 281
# Defs - Begin unit LCLNET has index 286
# Defs - End unit LCLNET has index 286
# Defs - Begin unit LCONTROLSTACK has index 296
# Defs - End unit LCONTROLSTACK has index 296
# Defs - Begin unit LTELNET has index 287
# Defs - End unit LTELNET has index 287
# Defs - Begin unit LFTP has index 288
# Defs - End unit LFTP has index 288
# Defs - Begin unit BASE64 has index 297
# Defs - End unit BASE64 has index 297
# Defs - Begin unit LMIMESTREAMS has index 299
# Defs - End unit LMIMESTREAMS has index 299
# Defs - Begin unit LMIMEWRAPPER has index 298
# Defs - End unit LMIMEWRAPPER has index 298
# Defs - Begin unit LSMTP has index 289
# Defs - End unit LSMTP has index 289
# Defs - Begin unit OPENSSL has index 302
# Defs - End unit OPENSSL has index 302
# Defs - Begin unit LNETSSL has index 291
# Defs - End unit LNETSSL has index 291
# Defs - Begin unit LHTTPUTIL has index 300
# Defs - End unit LHTTPUTIL has index 300
# Defs - Begin unit LSTRBUFFER has index 301
# Defs - End unit LSTRBUFFER has index 301
# Defs - Begin unit LHTTP has index 290
# Defs - End unit LHTTP has index 290
# Defs - Begin unit LNETCOMPONENTS has index 280
# Defs - End unit LNETCOMPONENTS has index 280
# Defs - Begin unit DATEUTILS has index 282
# Defs - End unit DATEUTILS has index 282
# Defs - Begin unit INIFILES has index 283
# Defs - End unit INIFILES has index 283
# Defs - Begin unit RESDATASTREAM has index 311
# Defs - End unit RESDATASTREAM has index 311
# Defs - Begin unit RESFACTORY has index 314
# Defs - End unit RESFACTORY has index 314
# Defs - Begin unit RESOURCETREE has index 312
# Defs - End unit RESOURCETREE has index 312
# Defs - Begin unit STRINGTABLERESOURCE has index 315
# Defs - End unit STRINGTABLERESOURCE has index 315
# Defs - Begin unit ICOCURTYPES has index 319
# Defs - End unit ICOCURTYPES has index 319
# Defs - Begin unit GROUPRESOURCE has index 318
# Defs - End unit GROUPRESOURCE has index 318
# Defs - Begin unit GROUPICONRESOURCE has index 316
# Defs - End unit GROUPICONRESOURCE has index 316
# Defs - Begin unit GROUPCURSORRESOURCE has index 317
# Defs - End unit GROUPCURSORRESOURCE has index 317
# Defs - Begin unit RESMERGER has index 313
# Defs - End unit RESMERGER has index 313
# Defs - Begin unit RESOURCE has index 309
# Defs - End unit RESOURCE has index 309
# Defs - Begin unit VERSIONCONSTS has index 320
# Defs - End unit VERSIONCONSTS has index 320
# Defs - Begin unit VERSIONTYPES has index 310
# Defs - End unit VERSIONTYPES has index 310
# Defs - Begin unit VERSIONRESOURCE has index 307
# Defs - End unit VERSIONRESOURCE has index 307
# Defs - Begin unit DOS has index 321
# Defs - End unit DOS has index 321
# Defs - Begin unit LCONVENCODING has index 308
# Defs - End unit LCONVENCODING has index 308
# Defs - Begin unit KFUNCTIONS has index 303
# Defs - End unit KFUNCTIONS has index 303
# Defs - Begin unit PRINTERS has index 322
# Defs - End unit PRINTERS has index 322
# Defs - Begin unit KRES has index 325
# Defs - End unit KRES has index 325
# Defs - Begin unit KGRAPHICS has index 323
# Defs - End unit KGRAPHICS has index 323
# Defs - Begin unit KMESSAGEBOX has index 324
# Defs - End unit KMESSAGEBOX has index 324
# Defs - Begin unit KCONTROLS has index 304
# Defs - End unit KCONTROLS has index 304
# Defs - Begin unit KPRINTPREVIEW has index 326
# Defs - End unit KPRINTPREVIEW has index 326
# Defs - Begin unit PRINTER4LAZSTRCONST has index 329
# Defs - End unit PRINTER4LAZSTRCONST has index 329
# Defs - Begin unit POSTSCRIPTUNICODE has index 334
# Defs - End unit POSTSCRIPTUNICODE has index 334
# Defs - Begin unit POSTSCRIPTCANVAS has index 331
# Defs - End unit POSTSCRIPTCANVAS has index 331
# Defs - Begin unit CUPSDYN has index 332
# Defs - End unit CUPSDYN has index 332
# Defs - Begin unit PANGOCAIRO has index 335
# Defs - End unit PANGOCAIRO has index 335
# Defs - Begin unit CAIROCANVAS has index 333
# Defs - End unit CAIROCANVAS has index 333
# Defs - Begin unit CUPSLCL has index 338
# Defs - End unit CUPSLCL has index 338
# Defs - Begin unit UDLGPROPERTIESPRINTER has index 337
# Defs - End unit UDLGPROPERTIESPRINTER has index 337
# Defs - Begin unit UDLGSELECTPRINTER has index 336
# Defs - End unit UDLGSELECTPRINTER has index 336
# Defs - Begin unit OSPRINTERS has index 330
# Defs - End unit OSPRINTERS has index 330
# Defs - Begin unit FRAMEPAGESETUP has index 340
# Defs - End unit FRAMEPAGESETUP has index 340
# Defs - Begin unit UDLGPAGESETUP has index 339
# Defs - End unit UDLGPAGESETUP has index 339
# Defs - Begin unit PRINTERSDLGS has index 328
# Defs - End unit PRINTERSDLGS has index 328
# Defs - Begin unit KPRINTSETUP has index 327
# Defs - End unit KPRINTSETUP has index 327
# Defs - Begin unit KDIALOGS has index 305
# Defs - End unit KDIALOGS has index 305
# Defs - Begin unit KLOG has index 306
# Defs - End unit KLOG has index 306
# Defs - Begin unit KEDITS has index 284
# Defs - End unit KEDITS has index 284
# Defs - Begin unit ANYSORT has index 285
# Defs - End unit ANYSORT has index 285
# Defs - Begin unit UNIT1 has index 9
# Defs - End unit UNIT1 has index 9
# Defs - Begin unit LAZARUSPACKAGEINTF has index 342
# Defs - End unit LAZARUSPACKAGEINTF has index 342
# Defs - Begin unit GROUPEDEDIT has index 359
# Defs - End unit GROUPEDEDIT has index 359
# Defs - Begin unit CALENDARPOPUP has index 360
# Defs - End unit CALENDARPOPUP has index 360
# Defs - Begin unit TIMEPOPUP has index 361
# Defs - End unit TIMEPOPUP has index 361
# Defs - Begin unit EDITBTN has index 344
# Defs - End unit EDITBTN has index 344
# Defs - Begin unit VALEDIT has index 345
# Defs - End unit VALEDIT has index 345
# Defs - Begin unit SHELLCTRLS has index 362
# Defs - End unit SHELLCTRLS has index 362
# Defs - Begin unit FILECTRL has index 346
# Defs - End unit FILECTRL has index 346
# Defs - Begin unit CHECKBOXTHEMED has index 347
# Defs - End unit CHECKBOXTHEMED has index 347
# Defs - Begin unit STRINGHASHLIST has index 348
# Defs - End unit STRINGHASHLIST has index 348
# Defs - Begin unit OBJINSPSTRCONSTS has index 349
# Defs - End unit OBJINSPSTRCONSTS has index 349
# Defs - Begin unit PROPEDITUTILS has index 350
# Defs - End unit PROPEDITUTILS has index 350
# Defs - Begin unit PACKAGEDEPENDENCYINTF has index 351
# Defs - End unit PACKAGEDEPENDENCYINTF has index 351
# Defs - Begin unit IDEOPTIONSINTF has index 364
# Defs - End unit IDEOPTIONSINTF has index 364
# Defs - Begin unit LAZHELPINTF has index 373
# Defs - End unit LAZHELPINTF has index 373
# Defs - Begin unit LAZHELPHTML has index 366
# Defs - End unit LAZHELPHTML has index 366
# Defs - Begin unit MACRODEFINTF has index 375
# Defs - End unit MACRODEFINTF has index 375
# Defs - Begin unit MACROINTF has index 374
# Defs - End unit MACROINTF has index 374
# Defs - Begin unit BASEIDEINTF has index 367
# Defs - End unit BASEIDEINTF has index 367
# Defs - Begin unit EDITORSYNTAXHIGHLIGHTERDEF has index 376
# Defs - End unit EDITORSYNTAXHIGHLIGHTERDEF has index 376
# Defs - Begin unit IDEOPTEDITORINTF has index 368
# Defs - End unit IDEOPTEDITORINTF has index 368
# Defs - Begin unit COMPOPTSINTF has index 369
# Defs - End unit COMPOPTSINTF has index 369
# Defs - Begin unit NEWITEMINTF has index 377
# Defs - End unit NEWITEMINTF has index 377
# Defs - Begin unit PROJPACKINTF has index 378
# Defs - End unit PROJPACKINTF has index 378
# Defs - Begin unit PROJECTINTF has index 370
# Defs - End unit PROJECTINTF has index 370
# Defs - Begin unit IDEEXTERNTOOLINTF has index 371
# Defs - End unit IDEEXTERNTOOLINTF has index 371
# Defs - Begin unit IDEIMAGESINTF has index 363
# Defs - End unit IDEIMAGESINTF has index 363
# Defs - Begin unit IDECOMMANDS has index 379
# Defs - End unit IDECOMMANDS has index 379
# Defs - Begin unit SRCEDITORINTF has index 372
# Defs - End unit SRCEDITORINTF has index 372
# Defs - Begin unit LAZIDEINTF has index 365
# Defs - End unit LAZIDEINTF has index 365
# Defs - Begin unit IDEWINDOWINTF has index 358
# Defs - End unit IDEWINDOWINTF has index 358
# Defs - Begin unit FRMSELECTPROPS has index 352
# Defs - End unit FRMSELECTPROPS has index 352
# Defs - Begin unit TEXTTOOLS has index 380
# Defs - End unit TEXTTOOLS has index 380
# Defs - Begin unit STRINGSPROPEDITDLG has index 353
# Defs - End unit STRINGSPROPEDITDLG has index 353
# Defs - Begin unit KEYVALPROPEDITDLG has index 354
# Defs - End unit KEYVALPROPEDITDLG has index 354
# Defs - Begin unit COLLECTIONPROPEDITFORM has index 355
# Defs - End unit COLLECTIONPROPEDITFORM has index 355
# Defs - Begin unit FILEFILTERPROPEDITOR has index 356
# Defs - End unit FILEFILTERPROPEDITOR has index 356
# Defs - Begin unit LAZMSGDIALOGS has index 382
# Defs - End unit LAZMSGDIALOGS has index 382
# Defs - Begin unit IDEDIALOGS has index 381
# Defs - End unit IDEDIALOGS has index 381
# Defs - Begin unit PAGESPROPEDITDLG has index 357
# Defs - End unit PAGESPROPEDITDLG has index 357
# Defs - Begin unit PROPEDITS has index 343
# Defs - End unit PROPEDITS has index 343
# Defs - Begin unit LNETVISUALREG has index 341
# Defs - End unit LNETVISUALREG has index 341
# Defs - Begin unit LNETVISUAL has index 10
# Defs - End unit LNETVISUAL has index 10
# Defs - Begin unit SI_C has index 383
# Defs - End unit SI_C has index 383
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
	.byte	0
	.type	.Ledebug_info0,@object
.Ledebug_info0:
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev

.section .debug_abbrev
# Abbrev 1
	.uleb128	1
	.uleb128	17
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	37
	.uleb128	8
	.uleb128	27
	.uleb128	8
	.uleb128	19
	.uleb128	11
	.uleb128	66
	.uleb128	11
	.uleb128	16
	.uleb128	6
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 2
	.uleb128	2
	.uleb128	46
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
	.byte	0
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line

.section .debug_line
# === header start ===
	.long	.Ledebug_line0-.Lf3
.Lf3:
	.short	2
	.long	.Lehdebug_line0-.Lf4
.Lf4:
	.byte	1
	.byte	1
	.byte	1
	.byte	255
	.byte	13
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
# include_directories
	.byte	0
# file_names
	.ascii	"distenc.lpr\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
	.type	.Lehdebug_line0,@object
.Lehdebug_line0:
# === header end ===
# function: main
# function: PASCALMAIN
# [15:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	26
# [16:3]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	5
	.uleb128	3
	.byte	13
# [17:21]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	5
	.uleb128	21
	.byte	13
# [18:3]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	3
	.byte	13
# [19:3]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	13
# [20:3]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	13
# [21:1]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll8
	.byte	0
	.byte	1
	.byte	1
# ###################
	.type	.Ledebug_line0,@object
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_dwarf_aranges

.section .debug_aranges
	.long	.Learanges0-.Lf1
.Lf1:
	.short	2
	.long	.Ldebug_info0
	.byte	8
	.byte	0
	.long	0
	.quad	main
	.quad	.Lt1-main
	.quad	0
	.quad	0
	.type	.Learanges0,@object
.Learanges0:
# End asmlist al_dwarf_aranges
# Begin asmlist al_dwarf_ranges

.section .debug_ranges
# End asmlist al_dwarf_ranges
# Begin asmlist al_end

.section .text.z_DEBUGEND_$P$DISTENC,"ax"
.globl	DEBUGEND_$P$DISTENC
	.type	DEBUGEND_$P$DISTENC,@object
DEBUGEND_$P$DISTENC:
# End asmlist al_end
.section .note.GNU-stack,"",%progbits

