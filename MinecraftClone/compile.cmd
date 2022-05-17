SET COMPILER=D:\Development\cpp\qwr\x64\Release\qwr.exe
SET GLFW=-l D:\Development\libs\glfw-3.3.2\lib-vc2019\glfw3dll.lib
SET GL=-l D:\Development\libs\OpenGL32.Lib
SET GLEW=-l D:\Development\libs\glew-2.1.0\lib\Release\x64\glew32s.lib
set SRC=src/minecraft.qwr
%COMPILER% %GLFW% %GLEW% %GL% %SRC% -v -release -print-ir -o minecraft.exe
pause