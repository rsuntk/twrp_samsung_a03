#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 Rissu Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a03

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
    
# Dynamic partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true