# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/hisense/m30/m30.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m30
PRODUCT_NAME := lineage_m30
PRODUCT_BRAND := Hisense
PRODUCT_MODEL := 5065D
PRODUCT_MANUFACTURER := TCL
PRODUCT_RELEASE_NAME := LMY47V

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m30-user 5.1.1 LMY47V vA73-0 release-keys" \
    BUILD_FINGERPRINT="TCL/5065D/m30:5.1.1/LMY47V/vA73-0:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-hisense

# Build signing
ifneq ($(wildcard vendor/paz00/cert/releasekey*),)
	PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/paz00/cert/releasekey
endif
