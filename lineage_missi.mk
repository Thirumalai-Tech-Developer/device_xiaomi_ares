#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from missi device
$(call inherit-product, device/xiaomi/missi/device.mk)

PRODUCT_DEVICE := missi
PRODUCT_NAME := lineage_missi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := missi
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phoneext4_global-user 13 TP1A.220624.014 V816.0.2.0.TKJINXM release-keys"

BUILD_FINGERPRINT := Xiaomi/missi/missi:13/TP1A.220624.014/V816.0.2.0.TKJINXM:user/release-keys
