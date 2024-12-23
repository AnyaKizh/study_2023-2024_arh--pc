%include 'in_out.asm'
SECTION .data
msg: DB 'Введите x: ',0
p1: db 'f(x)=2x+7',0
p2: db 'f(x)=3x-1',0
result: DB 'f(g(x))= ',0
SECTION .bss
x: RESB 80
res: RESB 80
SECTION .text
GLOBAL _start
_start:
;------------------------------------------
; Основная программа
;------------------------------------------
mov eax,p1
call sprintLF

mov eax,p2
call sprintLF

mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi
call _calcul ; Вызов подпрограммы _calcul
mov eax,result
call sprint
mov eax,[res]
call iprintLF
call quit
;------------------------------------------
; Подпрограмма вычисления
; выражения "2x+7"
_calcul:

call _subcalcul

mov ebx,2
mul ebx
add eax,7
mov [res],eax
ret ; выход из подпрограммы

_subcalcul:

mov ebx, 3
mul ebx
add eax, -1
ret