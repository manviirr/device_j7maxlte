#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_j7maxlte.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := j7max

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := j7maxlte
PRODUCT_MANUFACTURER := Ssamsung
PRODUCT_MODEL := j7maxlte
PRODUCT_NAME := lineage_j7maxlte
PRODUCT_RELEASE_NAME := j7maxlte
PRODUCT_RESTRICT_VENDOR_FILES := false

# SDcard
#PRODUCT_CHARACTERISTICS := nosdcard

# Google client ID property.
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Build fingerprint from Indian variant.
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=j7maxlte \
    PRODUCT_NAME=lineage_j7maxlte \
	PRIVATE_BUILD_DESC="j7maxlteins-user 7.0 NRD90M G615FXXU1AQL1 release-keys"
BUILD_FINGERPRINT := samsung/j7maxlteins/j7maxlte:7.0/NRD90M/G615FXXU1AQL1:user/release-keys
