# Inherit from common
include device/samsung/j7poplte-common/BoardConfigCommon.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := j7popltespr

# Kernel
TARGET_KERNEL_CONFIG := j7popltespr_defconfig

BOARD_SEPOLICY_DIRS += device/samsung/j7popltespr/sepolicy

# Init
TARGET_INIT_VENDOR_LIB := libinit_j7popltespr
TARGET_RECOVERY_DEVICE_MODULES := libinit_j7popltespr

# Partition sizes
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 11374931968
