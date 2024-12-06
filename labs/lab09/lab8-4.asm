%include 'in_out.asm'
section .data
P1 db 'f(x)=4x+3',0
O db 'Результат: ',0
section .text
global _start
_start:
pop ecx
pop edx
sub ecx,1
mov esi,0
mov eax,P1
call sprintLF
next:
cmp ecx,0
jz _end
pop eax
call atoi
call P2
add esi,eax
loop next
_end:
mov eax,O
call sprint
mov eax,esi
call iprintLF
call quit
P2:
mov ebx,4
mul ebx
add eax,3
ret