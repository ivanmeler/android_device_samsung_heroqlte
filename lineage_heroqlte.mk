#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
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

# Inherit from heroqlte device
$(call inherit-product, device/samsung/heroqlte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := heroqlte
PRODUCT_NAME := lineage_heroqlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G9300
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
# do note actial value is heroqltechn for device and heroqltezc for name
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=heroqlte \
    PRIVATE_BUILD_DESC="heroqltezc-user 8.0.0 R16NW G9300ZCS5CTA1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/heroqltezc/heroqltechn:8.0.0/R16NW/G9300ZCS5CTA1:user/release-keys"
