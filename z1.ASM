 format PE GUI 4.0
include 'k:\215\INCLUDE\win32ax.inc'
.data
Caption db '«¿ƒ¿Õ»≈ 1',0
Text db '–≈«”À‹“¿“ = %d',0
buf db 100 dup(?)
.code
start:
 mov eax,5
mov ecx, 10
l1:imul eax, ecx
loop l1
invoke wsprintf, addr buf, addr Text, eax
invoke MessageBox,0, addr buf, addr Caption, MB_OK
invoke ExitProcess, 0
.end start