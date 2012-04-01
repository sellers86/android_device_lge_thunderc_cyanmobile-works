$(call inherit-product, device/lge/thunderc/full_thunderc.mk)

#$(call inherit-product, device/lge/thunderc/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

PRODUCT_DEVICE := thunderc
PRODUCT_NAME := cm_thunderc
PRODUCT_BRAND := Virgin_Mobile
PRODUCT_MODEL := VM670
PRODUCT_MANUFACTURER := LGE

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusV

TARGET_BOOTANIMATION_NAME := vertical-320x480

PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_ID=GWK74 \
	PRODUCT_NAME=${PRODUCT_MODEL} \
	BUILD_DISPLAY_ID="GWK74 $(shell date +%m%d%Y)" \
	BUILD_FINGERPRINT=google/soju/crespo:4.0.3/GWK74/185293:user/release-keys \
	PRIVATE_BUILD_DESC="soju-user 4.0.3 GWK74 185293 release-keys" \
	BUILD_NUMBER=${DATE}
	TARGET_BUILD_TYPE=user
