# 
# Copyright (C) 2018 The Mokee Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from whyred device
$(call inherit-product, device/xiaomi/whyred/device.mk)

# Inherit from custom vendor
$(call inherit-product, vendor/MiuiCamera/config.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Inherit Carbon GSM telephony parts
#$(call inherit-product, vendor/carbon/config/gsm.mk)

PRODUCT_NAME := rr_whyred
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 5

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="whyred" \
    PRODUCT_NAME="whyred" \
    PRIVATE_BUILD_DESC="whyred-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEIMIFA release-keys"

BUILD_FINGERPRINT := xiaomi/whyred/whyred:8.1.0/OPM1.171019.011/V9.5.11.0.OEIMIFA:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=xiaomi/whyred/whyred:8.1.0/OPM1.171019.011/V9.5.11.0.OEIMIFA:user/release-keys

TARGET_VENDOR := Xiaomi

# RR Stuffs
TARGET_FACE_UNLOCK_SUPPORTED := true
RR_BUILDTYPE := Official

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
IS_PHONE := true
TARGET_MINIMAL_APPS := false
TARGET_INCLUDE_STOCK_ARCORE := true

# Inherit OPScreen Recorder
$(call inherit-product, vendor/apps/OPScreenRecord/config.mk)
