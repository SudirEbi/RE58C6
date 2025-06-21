#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/realme/RE58C6
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from itel-A666LN device
$(call inherit-product, device/realme/RE58C6/device.mk)


PRODUCT_DEVICE := RE58C6
PRODUCT_NAME := twrp_RE58C6
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3761
PRODUCT_MANUFACTURER := realme
PRODUCT_RELEASE_NAME := realme narzo N53

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums9230_hulk_Natv-user 13 TP1A.220624.014 396 release-keys"

BUILD_FINGERPRINT := realme/RMX3761/RE58C6:13/TP1A.220624.014/T.R4T2.1731481403:user/release-keys
