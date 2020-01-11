# distenc
In settings/settings.ini set the ip address of the network interface to bind to (defaults to 0.0.0.0 = all interfaces), and port.

BaseVideoURL - set the url where the video files are to be found, eg http://yourip.com:8000/to_encode 

I recommend you use something like https://github.com/codeskyblue/gohttpserver for quick file serving.


In the program gui:

enter the path of the video file in the first edit box

Threshold and minimum scene duration for pyscenedtect

URL of file- only if the URL where the video file is to be hosted is different from the default one (BaseVideoURL/Video filename).

then press "AddNewProj" button and wait. After pyscenedetect finishes, you should see the prject in the list view on the left. click it.



