# Hello World in x86 Assembly
Hello World as shown in https://www.youtube.com/watch?v=HgEGAaYdABA

## How to compile
Use `nasm` to compile.


**Create object file**
```
nasm -f elf32 -o hello_world.o assembly_hello_world.asm
```

**Create executable**
```
ld -m elf_i386 -o hello_world hello_world.o
```
