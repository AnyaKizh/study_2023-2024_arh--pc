%include 'in_out.asm'
section .data

msg1 db 'Введите число X: ',0h
msg2 db 'Введите число A: ',0h
msg3 db 'Значение функции f(x) = ',0h

section .bss
X resb 10
A resb 10
F resb 10

section .text
global _start

_start:

; ---------- Вывод сообщения 'Введите X: '
mov eax,msg1
call sprint
; ---------- Ввод 'X'
mov ecx,X
mov edx,10
call sread
; ---------- Преобразование 'X' из символа в число
mov eax,X
call atoi
mov [X],eax ; запись преобразованного числа в 'X'

; ---------- Вывод сообщения 'Введите A: '
mov eax,msg2
call sprint
; ---------- Ввод 'A'
mov ecx,A
mov edx,10
call sread
; ---------- Преобразование 'A' из символа в число
mov eax,A
call atoi
mov [A],eax ; запись преобразованного числа в 'A'

; ---------- Сравниваем 'X' и 'A' (как числа)
mov eax,[X]
cmp eax,[A] ; Сравниваем 'X' и 'A'
jg com1 ; если 'X>A', то переход на 'com1'

; ---------- если 'X <= A'
mov dword [F],15 ; 'F(x)=15'
jmp fin

; ---------- если 'X > A'
com1:
sub eax,[A] ; разность (x-a)
add eax,eax ; умножаем на 2
mov [F],eax

; ---------- Вывод результата
fin:
mov eax, msg3
call sprint ; Вывод сообщения
mov eax,[F]
call iprintLF ; Вывод
call quit ; Выход