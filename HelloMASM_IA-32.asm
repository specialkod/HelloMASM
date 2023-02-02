.386
.model flat, stdcall
option casemap:none

include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib

.DATA
	output 	db "Hello MASM!", 2 DUP(0Ah), "This program was written in 32-bit x86 assembly language.", 0Ah, 0
	outlen	equ $ - output

.CODE
Start:	push	-0Bh				;STD_OUTPUT_HANDLE
	call	GetStdHandle			;GetStdHandle(STD_OUTPUT_HANDLE)

	push 	0				;lpReserved
	push 	0				;lpNumberOfCharsWritten
	push 	outlen				;nNumberOfCharsToWrite
	push 	offset output			;lpBuffer
	push 	eax				;hConsoleOutput
	call	WriteConsole			;WriteConsole(eax, addr output, sizeof output, ebx, NULL)

	push	0               	        ;Exit code
	call	ExitProcess
END Start