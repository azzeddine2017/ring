cls
call ../../../language/build/locatevc.bat
cl /c /DEBUG ring_opengl31.c -I "..\..\..\extensions\libdepwin\glew\include" -I "..\..\..\extensions\libdepwin\freeglut\include" -I"..\..\..\language\include"
link /DEBUG ring_opengl31.obj  ..\..\..\lib\ring.lib ..\..\..\extensions\libdepwin\glew\lib\release\win32\glew32.lib ..\..\..\extensions\libdepwin\freeglut\lib\freeglut.lib /DLL /OUT:..\..\..\bin\ring_opengl31.dll /SUBSYSTEM:CONSOLE,"5.01" 
del ring_opengl31.obj