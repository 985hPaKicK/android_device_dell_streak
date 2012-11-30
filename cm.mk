# Release name
PRODUCT_RELEASE_NAME := DS

# Inherit AOSP device configuration for streak.
$(call inherit-product, device/dell/streak/streak.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_streak
PRODUCT_BRAND := dell
PRODUCT_DEVICE := streak
PRODUCT_MODEL := STREAK
PRODUCT_MANUFACTURER := DELL
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=streak BUILD_ID=IML74K BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT="dell/streak/streak:4.0.2/ICL53F/235179:user/release-keys" PRIVATE_BUILD_DESC="streak-user 4.0.2 ICL53F 235179 release-keys"
