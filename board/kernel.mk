# Kernel informations

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04f88000 --tags_offset 0x03f88000 --dt device/samsung/j7maxlte/dtb
TARGET_KERNEL_SOURCE := kernel/samsung/j7maxlte
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := j7maxlte_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
#MTK_APPENDED_DTB_SUPPORT := yes
BOARD_KERNEL_IMAGE_NAME := Image.gz
LZMA_RAMDISK_TARGETS := boot,recovery
BOARD_USES_FULL_RECOVERY_IMAGE := true

BOARD_CUSTOM_BOOTIMG_MK := device/samsung/j7maxlte/bootimg.mk

# Kernel properties
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilts/Image.gz
