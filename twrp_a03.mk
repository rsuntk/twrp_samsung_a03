#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 Rissu Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# inherit twrp
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/samsung/a03/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a03/recovery/root,recovery/root)

PRODUCT_DEVICE := a03
PRODUCT_NAME := twrp_a03
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A035F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung