# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, device/LYF/mobee01a/full_mobee01a.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_mini_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8939

PRODUCT_NAME := lineage_mobee01a
BOARD_VENDOR := LYF
PRODUCT_DEVICE := mobee01a

PRODUCT_GMS_CLIENTID_BASE := android-ckt

TARGET_VENDOR_PRODUCT_NAME := LS-5015
TARGET_VENDOR_DEVICE_NAME := LS-5015
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=LS-5015 PRODUCT_NAME=LS-5015

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=LYF/LS-5015/LS-5015:5.1.1/LMY49J/YOG4PAS8A4:user/release-keys \
    PRIVATE_BUILD_DESC="LS-5015-user 5.1.1 LMY49J YOG4PAS8A4 release-keys"
endif
