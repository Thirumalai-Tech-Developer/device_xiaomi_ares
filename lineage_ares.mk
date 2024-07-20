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

# Inherit from ares device
$(call inherit-product, device/xiaomi/ares/device.mk)

PRODUCT_DEVICE := ares
PRODUCT_NAME := lineage_ares
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2104K10I
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aresin-user 13 SP1A.210812.016 V816.0.2.0.TKJINXM release-keys"

BUILD_FINGERPRINT := POCO/aresin/aresin:12/SP1A.210812.016/V816.0.2.0.TKJINXM:user/release-keys
