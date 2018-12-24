all: gentoo.iso

gentoo.iso:
	xorriso -as mkisofs -b isolinux/isolinux.bin -c boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o gentoo.iso gentoo
	isohybrid gentoo.iso
