$(call inherit-product, device/lge/thunderc/full_thunderc.mk)

#$(call inherit-product, device/lge/thunderc/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_NAME := cm_thunderc
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := OPTIMUS
PRODUCT_MODEL := VM670
PRODUCT_MANUFACTURER := LGE

# Release name and versioning
PRODUCT_RELEASE_NAME := thunderc

PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_ID=GWK74 \
	PRODUCT_NAME=${PRODUCT_MODEL} \
	BUILD_DISPLAY_ID="GWK74 $(shell date +%m%d%Y)" \
	BUILD_FINGERPRINT=lge/lge_gelato/VM701:2.3.4/GRJ22/ZV4.19cd75186d:user/release-keys \
	PRIVATE_BUILD_DESC="lge_gelato-user 2.3.4 GRJ22 ZV4.19cd75186d release-keys" \
	BUILD_NUMBER=${DATE}
	TARGET_BUILD_TYPE=user

