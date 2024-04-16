 format PE GUI 4.0
include 'k:\215\INCLUDE\win32ax.inc'
.data
Caption db '«¿ƒ¿Õ»≈ 1',0
Text db '–≈«”À‹“¿“ = %d',0
     buf db 100 dup(?)
     x dd 7
     y dd 7
.code
start:
 mov eax,0
mov ecx, [y]
l1: add eax, [x]
loop l1
invoke wsprintf, addr buf, addr Text, eax
invoke MessageBox,0, addr buf, addr Caption, MB_OK
invoke ExitProcess, 0
.end start