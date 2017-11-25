# Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/j7popltespr/j7popltespr-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/j7poplte-common/j7poplte.mk)

LOCAL_PATH := device/samsung/j7popltespr

# Data configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
