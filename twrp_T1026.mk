#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from T1026 device
$(call inherit-product, device/alldocube/T1026/device.mk)

# Inherit some common TWRP stuff
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := T1026
PRODUCT_NAME := twrp_T1026
PRODUCT_BRAND := Alldocube
PRODUCT_MODEL := kPad
PRODUCT_MANUFACTURER := Alldocube