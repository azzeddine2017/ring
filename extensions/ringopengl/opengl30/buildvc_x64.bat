cls
call ../../../language/build/locatevc.bat x64
cl /c /DEBUG ring_opengl30.c -I "..\..\..\extensions\libdepwin\glew\include" -I "..\..\..\extensions\libdepwin\freeglut\include" -I"..\..\..\language\include"
link /DEBUG ring_opengl30.obj  ..\..\..\lib\ring.lib ..\..\..\extensions\libdepwin\glew\lib\release\x64\glew32.lib ..\..\..\extensions\libdepwin\freeglut\lib\x64\freeglut.lib /DLL /OUT:..\..\..\bin\ring_opengl30.dll  
del ring_opengl30.obj