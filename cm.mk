$(call inherit-product, device/lge/thunderc/thunderc.mk)

$(call inherit-product, device/lge/thunderc/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=thunderc BUILD_ID=GWK74 BUILD_DISPLAY_ID="GWK74 $(shell date +%m%d%Y)" BUILD_FINGERPRINT=lge/lge_gelato/VM701:2.3.4/GRJ22/ZV4.19cd75186d:user/release-keys PRIVATE_BUILD_DESC="lge_gelato-user 2.3.4 GRJ22 ZV4.19cd75186d release-keys

PRODUCT_NAME := thunderc
PRODUCT_DEVICE := VM670

