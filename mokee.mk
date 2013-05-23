# Inherit device configuration for Pantech Vega S5.
$(call inherit-product, device/pantech/ef44s/full_ef44s.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := mk_ef44s
PRODUCT_BRAND := pantech
PRODUCT_DEVICE := ef44s
PRODUCT_MODEL := IM-A840S
PRODUCT_MANUFACTURER := pantech
PRODUCT_RELEASE_NAME := pantech Vega S5
PRODUCT_SFX := us

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_MODEL}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_MODEL}_${PRODUCT_SFX}/${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE=
