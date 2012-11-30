# Copyright (c) 2009, Code Aurora Forum.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# config.mk
#
# Product-specific compile-time definitions.
#
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/dell/streak/BoardConfigVendor.mk

TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOOTLOADER_BOARD_NAME := streak

TARGET_PROVIDES_INIT_RC := true

BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := streak
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_HAS_FLIPPED_SCREEN := true

# Streak Camera
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA_GB_REL := true
BOARD_USE_CAF_LIBCAMERA := true

# Avoid glitch. Essential config!
BOARD_NO_RGBX_8888 := true

BOARD_NO_32BPP := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

TARGET_PROVIDES_LIBAUDIO := true

BOARD_EGL_CFG := device/dell/streak/files/egl.cfg

BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_5_X
BOARD_WLAN_DEVICE := bcm4325
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wlan/sdio-g-cdc-reclaim-idsup-wme-pktfilter-keepalive-aoe-toe-ccx-wapi_rc63.1.bin nvram_path=/etc/wlan/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wlan/sdio-g-cdc-reclaim-idsup-wme-pktfilter-keepalive-aoe-toe-ccx-wapi_rc63.1.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wlan/fw_bcm4325_apsta.bin"

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_RADIOIMAGE := true

BOARD_KERNEL_BASE    := 0x20000000
BOARD_NAND_PAGE_SIZE := 2048

BOARD_KERNEL_CMDLINE := androidboot.hardware=streak no_console_suspend
BOARD_KERNEL_BASE := 0x20000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x10400000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/dell/streak/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/dell/streak/recovery_kernel

#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := bcm4325

#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
