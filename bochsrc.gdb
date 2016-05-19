###############################################################
# bochsrc.bxrc file for Orange'S.
###############################################################

# how much memory the emulated machine will have
megs: 2047

# filename of ROM images
romimage: file=/usr/share/bochs/BIOS-bochs-latest
vgaromimage: file=/usr/share/bochs/VGABIOS-elpin-2.40 
# what disk images will be used
# !! Remember to change Makefile::FD if the fd img is changed:
floppya: 1_44=fd.img, status=inserted

# hard disk
ata0: enabled=1, ioaddr1=0x1f0, ioaddr2=0x3f0, irq=14
# !! Remember to change these if the hd img is changed:
#    1. include/sys/config.h::MINOR_BOOT
#    2. boot/include/load.inc::ROOT_BASE
#    3. Makefile::HD
#    4. commands/Makefile::HD
ata0-master: type=disk, path="80m.img", mode=flat, cylinders=162, heads=16, spt=63

# choose the boot disk.
boot: a

# where do we send log messages?
# log: bochsout.txt

# disable the mouse, since Orange'S is text only
mouse: enabled=0

# enable key mapping, using US layout as default.
keyboard:keymap=/usr/local/share/bochs/keymaps/x11-pc-uk.map
#config_interface: nogui
#display_library: nogui

gdbstub: enabled=1, port=1234, text_base=0, data_base=0, bss_base=0
