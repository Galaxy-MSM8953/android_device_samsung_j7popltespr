# Inherit from common
include device/samsung/j7poplte-common/BoardConfigCommon.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := j7popltespr

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8953_sec_j7poplte_usa_spr_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 36612931584
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 113349419728
