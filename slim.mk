# Specify phone tech before including full_phone
$(call inherit-product, vendor/aoxp/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GT-N7100

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common Slim stuff.
$(call inherit-product, vendor/aoxp/config/common_full_phone.mk)

# Inherit device configuration
#$(call inherit-product, device/samsung/n7100/full_n7100.mk)

# Inherit torch settings
$(call inherit-product, vendor/aoxp/config/common_ledflash.mk)

# Inherit device settings
$(call inherit-product, vendor/aoxp/config/common_sgs.mk)

PRODUCT_COPY_FILES +=  \
    vendor/aoxp/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy 00check
PRODUCT_COPY_FILES += \
    vendor/aoxp/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n7100
PRODUCT_NAME := aoxp_n7100
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N7100
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t03gxx TARGET_DEVICE=t03g BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.1.1/JRO03C/N7100XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="t03gxx-user 4.1.1 JRO03C N7100XXALJ3 release-keys"
