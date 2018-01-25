# Inherit from common
include device/samsung/j7poplte-common/BoardConfigCommon.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := j7popltespr

# Kernel
TARGET_KERNEL_CONFIG := j7popltespr_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_j7popltespr
TARGET_RECOVERY_DEVICE_MODULES := libinit_j7popltespr

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 3674210304
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 11374931968
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
