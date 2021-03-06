
define Device/default-nand
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  SUBPAGESIZE := 2048
  MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 2048
endef

define Device/at91-sama5d4_lorix_one
  DEVICE_DTS := at91-sama5d4_lorix_one
  $(Device/evaluation-dtb)
  $(Device/sysupgrade-dtb)
  DEVICE_TITLE := Microchip(Atmel AT91) LORIX One 256MB
  KERNEL_SIZE := 6144k
  BLOCKSIZE := 256k
  PAGESIZE := 2048
  SUBPAGESIZE := 2048
  MKUBIFS_OPTS := -m $$(PAGESIZE) -e 0x1f000 -c 2048
  UBINIZE_OPTS := -m $$(PAGESIZE) -p 0x20000 -s 2048
endef
TARGET_DEVICES += at91-sama5d4_lorix_one
