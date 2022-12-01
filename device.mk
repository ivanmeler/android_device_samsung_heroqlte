#
# Copyright (C) 2020-2021 The LineageOS Project
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

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/heroqlte/heroqlte-vendor.mk)

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Device init scripts
PRODUCT_PACKAGES += \
    init.heroqlte.rc \
    init.rilchip.rc \
    init.rilcommon.rc \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc

# IPA
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4 \
    android.hardware.radio.config@1.1 \
    android.hardware.radio.deprecated@1.0 \
    android.hardware.secure_element@1.0 \
    librmnetctl \
    libxml2 \
    libprotobuf-cpp-full

# Inherit from msm8996-common
$(call inherit-product, device/samsung/msm8996-common/msm8996.mk)
