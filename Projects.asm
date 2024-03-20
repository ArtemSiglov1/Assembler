format PE GUI 4.0
include 'c:\Users\Home\source\INCLUDE\win32ax.inc'
.data
Caption db 'заголовок',0
Text db 'Лучший предмет на первом курсе это-Математический анализ',0
 .code
start:
 invoke MessageBox, 0, Text, Caption, 0
 invoke ExitProcess, 0 30 
 .end start
 