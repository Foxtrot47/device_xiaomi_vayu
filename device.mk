#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_USE_DYNAMIC_PARTITIONS := true

# Inherit from sm8150-common
$(call inherit-product, device/xiaomi/sm8150-common/msmnile.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 30

# Fingerprint
PRODUCT_PACKAGES += \
    libkeymaster_messages.vendor

# Overlays
PRODUCT_PACKAGES += \
    AOSPAVayuSettings \
    VayuFrameworks \
    VayuSystemUI

# Properties
TARGET_VENDOR_PROP := $(LOCAL_PATH)/vendor.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/vayu/vayu-vendor.mk)
