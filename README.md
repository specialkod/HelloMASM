# HelloMASM
Simple "Hello World" type Windows program written in x86 assembly language for the Microsoft Macro Assembler (MASM). Uses only the Kernel32 library of the Win32 API, and no macros. HelloMASM_IA-32.asm is a 32-bit version, and HelloMASM_x86-64.asm is a 64-bit version.

**32-bit version:**

Assemble with `ml /c /coff HelloMASM_IA-32.asm`

Link with `link /SUBSYSTEM:CONSOLE HelloMASM_IA-32.obj`

**64-bit version:**

Assemble with `ml64 /c HelloMASM_x86-64.asm`

Link with `link /SUBSYSTEM:CONSOLE /ENTRY:Start HelloMASM_x86-64.obj`

MASM32 and MASM64 can be obtained from http://www.masm32.com/
