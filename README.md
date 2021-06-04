Apuntes Basicos para ENsamblador
Masm - windows
Nasm - Apple/linux

LINUX
Compilar a codigo maquina - 
nasm -f elf64 -o program.o program.nasm

Vincular el codigo maquina en un binario elf
ld -o program program.o

DOCKER
sudo docker build -t ubuntu:latest .
sudo docker -it ubuntu:latest

Guide
https://harm-smits.github.io/42docs/


MAC
gcc -L. -lasm -o exec main.c


https://www.exabyteinformatica.com/uoc/Informatica/Estructura_de_computadores/Estructura_de_computadores_(Modulo_6).pdf

If nasm is not intalled , reinstall it with brew -> "brew install nasm"
"Cheat sheet" -> https://www.cs.uaf.edu/2017/fall/cs301/reference/x86_64.html
"Registers" -> https://medium.com/@tirkarp/understanding-x86-assembly-5d7d637efb5
"Intel Pentium Instruction Set Reference" -> https://faydoc.tripod.com/cpu/
"Debuggear con gdb" -> https://ncona.com/2019/12/debugging-assembly-with-gdb/
"Diferencia ensamblador Mac Ox vs Linux" -> http://rayseyfarth.blogspot.com/2012/09/assembly-language-linux-vs-os-x.html

Inspiration -> https://github.com/rchallie/libasm