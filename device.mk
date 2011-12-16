# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file includes all definitions that apply only to VM670 devices
#
# Anything that is generic to all thunderc products should go in the thunderc directory
#
# Everything in this directory will become public

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/thunderc/files/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
	gps.thunderc \
	libmm-omxcore \
	libOmxCore \
	bdaddr_read \
	flash_image \
	dump_image \
	erase_image \
	e2fsck

DISABLE_DEXPREOPT := false

DEVICE_PREBUILT := device/lge/thunderc

DEVICE_PACKAGE_OVERLAYS += \
        $(DEVICE_PREBUILT)/overlay/common \
        $(DEVICE_PREBUILT)/overlay/VM670

# Touchscreen config
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/files/touch_mcs6000.idc:/system/lib/idc/touch_mcs6000.idc

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Keylayouts
PRODUCT_COPY_FILES += \
        $(DEVICE_PREBUILT)/files/usr/keylayout/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
        $(DEVICE_PREBUILT)/files/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl

# Board-specific init (does not support charging in "power off" state yet)
PRODUCT_COPY_FILES := \
        $(DEVICE_PREBUILT)/files/init.thunderc.rc:root/init.thunderc.rc \
        $(DEVICE_PREBUILT)/files/ueventd.thunderc.rc:root/ueventd.thunder.rc \
        $(DEVICE_PREBUILT)/files/initlogo.rle:root/initlogo.rle \
        $(DEVICE_PREBUILT)/files/chargerlogo:root/chargerlogo \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_notenough.rle:root/chargerimages/battery_notenough.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
        $(DEVICE_PREBUILT)/files/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_02.rle \
        $(DEVICE_PREBUILT)/files/etc/init.local.rc:/system/etc/init.local.rc

# GPS
PRODUCT_COPY_FILES := \
        $(DEVICE_PREBUILT)/files/etc/loc_parameter.ini:system/etc/loc_parameter.ini

# WiFi
PRODUCT_COPY_FILES := \
        $(DEVICE_PREBUILT)/files/modules/VM670/wireless.ko:system/lib/modules/wireless.ko \
        $(DEVICE_PREBUILT)/files/modules/VM670/tun.ko:system/lib/modules/tun.ko \
        $(DEVICE_PREBUILT)/files/modules/VM670/cifs.ko:system/lib/modules/cifs.ko \
        $(DEVICE_PREBUILT)/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
        $(DEVICE_PREBUILT)/files/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Audio
PRODUCT_COPY_FILES := \
        $(DEVICE_PREBUILT)/files/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
        $(DEVICE_PREBUILT)/files/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Device permissions
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

PRODUCT_COPY_FILES += \
        $(DEVICE_PREBUILT)/files/etc/media_profiles.xml:system/etc/media_profiles.xml \
        $(DEVICE_PREBUILT)/files/etc/init.d/mvdalvik.sh:system/etc/init.d/01mvdalvik

# Apps
#PRODUCT_COPY_FILES += \
#        $(DEVICE_PREBUILT)/files/apps/CarHomeGoogle.apk:system/app/CarHomeGoogle.apk \
#        $(DEVICE_PREBUILT)/files/apps/LauncherPro.apk:system/app/LauncherPro.apk

# Let's use our own GPS config file
PRODUCT_COPY_FILES += \
        $(DEVICE_PREBUILT)/files/etc/gps.conf:system/etc/gps.conf

# mdpi goes last so that the janky default locale/region code can pick a sane default
PRODUCT_LOCALES += mdpi

CDMA_BRAND := virgin_mobile
CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Virgin_Mobile
CDMA_CARRIER_NUMERIC := 311490

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.brand=$(CDMA_BRAND) \
    ro.com.google.clientidbase=$(CDMA_GOOGLE_BASE) \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC)

$(call inherit-product-if-exists, vendor/lge/thunderc/device-vendor.mk)
