LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS := -Os

LOCAL_SRC_FILES :=
LOCAL_SRC_FILES += kexec.c
LOCAL_SRC_FILES += ifdown.c
LOCAL_SRC_FILES += kexec-elf.c
LOCAL_SRC_FILES += kexec-elf-exec.c
LOCAL_SRC_FILES += kexec-elf-core.c
LOCAL_SRC_FILES += kexec-elf-rel.c
LOCAL_SRC_FILES += kexec-elf-boot.c
LOCAL_SRC_FILES += kexec-iomem.c
LOCAL_SRC_FILES += firmware_memmap.c
LOCAL_SRC_FILES += crashdump.c
LOCAL_SRC_FILES += crashdump-xen.c
LOCAL_SRC_FILES += phys_arch.c
LOCAL_SRC_FILES += lzma.c
LOCAL_SRC_FILES += zlib.c
LOCAL_SRC_FILES += arch/arm/kexec-elf-rel-arm.c
LOCAL_SRC_FILES += arch/arm/kexec-zImage-arm.c
LOCAL_SRC_FILES += arch/arm/kexec-uImage-arm.c
LOCAL_SRC_FILES += arch/arm/kexec-arm.c
LOCAL_SRC_FILES += arch/arm/crashdump-arm.c
LOCAL_SRC_FILES += ../util_lib/sha256.c
LOCAL_SRC_FILES += kexec-uImage.c
LOCAL_SRC_FILES += proc_iomem.c
LOCAL_SRC_FILES += virt_to_phys.c
LOCAL_SRC_FILES += arch/arm/phys_to_virt.c
LOCAL_SRC_FILES += add_segment.c
LOCAL_SRC_FILES += add_buffer.c
LOCAL_SRC_FILES += arch_reuse_initrd.c
LOCAL_SRC_FILES += arch_init.c



LOCAL_MODULE := libsteam_kexec
LOCAL_MODULE_TAGS := eng

LOCAL_STATIC_LIBRARIES :=

LOCAL_C_INCLUDES := bootable/steam/kexec \
										bootable/steam/kexec/kexec \
										bootable/steam/kexec/include \
										bootable/steam/kexec/kexec/arch/arm/include \
										bootable/steam/kexec/util_lib/include

LOCAL_CFLAGS := -Os -g -W -Wall \
	-Dmain=steam_kexec_main \
  -Dxstrdup=xxstdrup \
	-Dxmalloc=xxmalloc \
	-Dxrealloc=xxrealloc \
	-Ddie=xxdie

include $(BUILD_STATIC_LIBRARY)

