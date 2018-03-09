# Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/j7popltespr/j7popltespr-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/j7poplte-common/j7poplte.mk)

LOCAL_PATH := device/samsung/j7popltespr

# System properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Ramdisk
PRODUCT_PACKAGES += \
    init.rilcarrier.rc
