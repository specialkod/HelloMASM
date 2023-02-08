includelib \masm64\lib64\kernel32.lib

GetStdHandle	proto :DWORD
WriteConsoleA	proto :PTR, :PTR, :DWORD, :PTR, :DWORD
ExitProcess	proto :DWORD

.DATA
	output 	db "Hello MASM!", 2 DUP(0Ah), "This program was written in 64-bit x86 assembly language.", 0Ah, 0
	outlen	equ $ - output

.CODE
Start proc
	mov	rcx, -0Bh			;STD_OUTPUT_HANDLE, in RCX
	call	GetStdHandle			;GetStdHandle(STD_OUTPUT_HANDLE)

	mov 	qword ptr [rsp + 20h], 0	;lpReserved, on the stack
	mov 	r9, 0				;lpNumberOfCharsWritten, in R9
	mov 	r8, outlen			;nNumberOfCharsToWrite, in R8
	mov 	rdx, OFFSET output		;lpBuffer, in RDX
	mov 	rcx, rax			;hConsoleOutput, in RCX
	call	WriteConsoleA			;WriteConsoleA(hConsoleOutput, lpBuffer, nNumberOfCharsToWrite, lpNumberOfCharsWritten, lpReserved)

	xor	rcx, rcx               	        ;Exit code = 0, in RCX
	call	ExitProcess
Start endp
END