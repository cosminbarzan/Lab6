bits 32
global start
extern exit, printf, scanf
import exit msvcrt.dll 
import printf msvcrt.dll 
import scanf msvcrt.dll 

segment data use32 class=data
	_format db "Print: %d", 10, 0
	_sformat db "%d", 0
	a dd 0
	b dd 0
	c dd 0


segment code use32 class=code
start:
	push dword b
	push dword _sformat
	call [scanf]
	add esp, 4 * 2
	push dword a
	push dword _sformat
	call [scanf]
	add esp, 4 * 2
	mov eax, 0
	add eax, [b]
	sub eax, [a]
	mov dword [c], eax

	push dword [c]

	push dword _format
	call [printf]
	add esp, 4 * 2


