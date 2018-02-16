# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from z2_row device
$(call inherit-product, device/zuk/z2_row/device.mk)

# Boot animation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common AOSP-OMS stuff.
$(call inherit-product, vendor/aosp/common.mk)

PRODUCT_NAME := aosp_z2_row
PRODUCT_DEVICE := z2_row
PRODUCT_MANUFACTURER := ZUK
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := Z2 Pro

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=z2_row PRODUCT_NAME=z2_row

TARGET_VENDOR := zuk

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="ZUK/z2_row/z2_row:7.0/NRD90M/2.5.435_170525:user/release-keys" \
    PRIVATE_BUILD_DESC="z2_row-user 7.0 NRD90M 2.5.435_170525 release-keys"
