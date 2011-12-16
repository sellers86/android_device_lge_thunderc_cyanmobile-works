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

# These two variables are set first, so they can be overridden
# by BoardConfigVendor.mk

#Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# Board properties
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Target properties
TARGET_OTA_ASSERT_DEVICE := thunderc
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=thunderc
TARGET_BOARD_INFO_FILE := device/lge/thunderc/board-info.txt

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := thunderc

# Graphics
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
# BOARD_NO_RGBX_8888 := true
BOARD_EGL_CFG := device/lge/thunderc/files/lib/egl/egl.cfg
BOARD_HAS_LIMITED_EGL := true
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS -DNO_RGBX_8888
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

TARGET_PROVIDES_INIT_TARGET_RC := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_VENDOR_USE_AKMD := akm8973

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_USES_GPSSHIM := true
BOARD_GPS_NEEDS_XTRA := true
BOARD_GPS_LIBRARIES := libloc

# USB mass storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/thunderc/netd/UsbController.cpp

# Wifi related defines
BOARD_WLAN_DEVICE := bcm4325
WPA_SUPPLICANT_VERSION := VER_0_5_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME := wireless
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_HAS_LGE_SOFTAP := true

# Kernel
TARGET_PREBUILT_KERNEL := device/lge/thunderc/files/zImage
BOARD_KERNEL_CMDLINE := mem=477M console=ttyMSM2,115200n8 androidboot.hardware=thunderc uart_console=disable recovery=off lge.rev=10
BOARD_KERNEL_BASE := 0x12200000
BOARD_PAGE_SIZE := 0x00000800

# Appropriate defaults?
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00700000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0a480000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0b2e0000

#BOARD_HAS_NO_SELECT_BUTTON := true

WITH_DEXPREOPT := false

# Browser
# WITH_JIT := true
# ENABLE_JSC_JIT := true
JS_ENGINE := v8

#Audio
BOARD_USES_GENERIC_AUDIO := true
BUILD_WITH_FULL_STAGEFRIGHT := false
TARGET_PROVIDES_LIBAUDIO := true
BOARD_FORCE_STATIC_A2DP := true

# RIL
# TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBRIL := vendor/lge/thunderc/proprietary/system/lib/libril-qc-1.so

# FM radio
# BOARD_HAVE_FM_RADIO := true
# BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
# TARGET_SF_NEEDS_REAL_DIMENSIONS := true

BOARD_USES_OVERLAY := true
