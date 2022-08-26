Build instructions taken from http://mikeos.sourceforge.net/write-your-own-os.html

## Building (on linux)
1. nasm -f bin -o os.bin kernel.asm
2. dd status=noxfer conv=notrunc if=os.bin of=os.flp
3. qemu-system-i386 -fda os.flp
4. mkisofs -o OpenOS.iso -b os.flp cdiso/