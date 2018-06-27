# Inherit from common
$(call inherit-product, device/samsung/j7poplte-common/lineage.mk)

$(call inherit-product, device/samsung/j7popltespr/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j7popltespr
PRODUCT_NAME := lineage_j7popltespr
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J727P
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=samsung/j7popltespr/j7popltespr:7.0/NRD90M/J727PVPU3ARC2:user/release-keys \
    PRIVATE_BUILD_DESC="j7popltespr-user 7.0 NRD90M J727PVPU3ARC2 release-keys" \