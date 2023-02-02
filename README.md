# HelloMASM
Simple "Hello World" type Windows program written in 32-bit x86 assembly language for the Microsoft Macro Assembler (MASM). Only uses the Kernel32 library of the Win32 API, and no macros.

Assemble with: `ml /c /coff HelloMASM_IA-32.asm`

Link with: `link /SUBSYSTEM:CONSOLE HelloMASM_IA-32.obj`
