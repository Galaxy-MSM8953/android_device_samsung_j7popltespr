# Inherit from common
$(call inherit-product, device/samsung/j7poplte-common/lineage.mk)

$(call inherit-product, device/samsung/j7popltespr/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j7popltespr
PRODUCT_NAME := lineage_j7popltespr
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_GMS_CLIENTID_BASE := android-samsung