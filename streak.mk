#
# Copyright (C) 2009 The Android Open Source Project
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
#

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/dell/streak/streak-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/dell/streak/overlay

# Wifi
PRODUCT_COPY_FILES += \
    device/dell/streak/files/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/dell/streak/files/dhd.ko:system/lib/modules/dhd.ko
#    device/dell/streak/files/dhd_test.ko:system/lib/modules/dhd_test.ko

# Sensor
PRODUCT_COPY_FILES += \
    device/dell/streak/files/sensors.streak.so:system/lib/hw/sensors.streak.so

# Init
PRODUCT_COPY_FILES += \
    device/dell/streak/files/initlogo.rle:root/initlogo.rle \
    device/dell/streak/files/install-recovery.sh:system/etc/install-recovery.sh \
    device/dell/streak/init.rc:root/init.rc \
    device/dell/streak/init.streak.rc:root/init.streak.rc \
    device/dell/streak/init.streak.usb.rc:root/init.streak.usb.rc \
    device/dell/streak/ueventd.streak.rc:root/ueventd.rc

# Permissions
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Apks
PRODUCT_COPY_FILES += \
    device/dell/streak/files/RootExplorer.apk:system/app/RootExplorer.apk \
    device/dell/streak/files/Quickoffice.apk:system/app/Quickoffice.apk \

# SetCpu
PRODUCT_COPY_FILES += \
    device/dell/streak/files/libsetcpu-native.so:system/lib/libsetcpu-native.so \
    device/dell/streak/files/SetCpu.apk:system/app/SetCpu.apk

# Media Profile
PRODUCT_COPY_FILES += \
    device/dell/streak/media_profiles.xml:system/etc/media_profiles.xml

# GPS
PRODUCT_COPY_FILES += \
    device/dell/streak/files/gps.streak.so:system/lib/hw/gps.streak.so \
    device/dell/streak/files/gps.conf:system/etc/gps.conf

# APN
PRODUCT_COPY_FILES += \
    device/dell/streak/files/apns-conf.xml:system/etc/apns-conf.xml

# Vsync
PRODUCT_COPY_FILES += \
    device/dell/streak/files/vsync.ko:system/lib/modules/vsync.ko

# KoreanIME
PRODUCT_COPY_FILES += \
    device/dell/streak/files/libjni_koreanime.so:system/lib/libjni_koreanime.so \
    device/dell/streak/files/KoreanIME.apk:system/app/LatinIME.apk

# Touchscreen
PRODUCT_COPY_FILES += \
    device/dell/streak/files/auo_touchscreen.idc:system/usr/idc/auo_touchscreen.idc

PRODUCT_PACKAGES += \
    camera.qsd8k \
    gralloc.qsd8k \
    copybit.qsd8k \
    audio.primary.streak \
    audio.a2dp.default \
    libOmxCore \
    libOmxVenc \
    libOmxVidEnc \
    libcamera

PRODUCT_LOCALES += mdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/dell/streak/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := dell_streak
PRODUCT_BRAND := dell
PRODUCT_DEVICE := streak
PRODUCT_MODEL := DELL Streak
PRODUCT_MANUFACTURER := dell
