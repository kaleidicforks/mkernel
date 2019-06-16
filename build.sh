#!/bin/bash
nasm -f elf32 source/kernel.asm -o build/kasm.o
dmd -m32 -c -ofbuild/kc.o -debuglib= -defaultlib= -betterC source/kernel.d
ld -m elf_i386 -T source/link.ld -o build/kernel build/kasm.o build/kc.o
