#
# Copyright (C) 2019 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from flashlmdd device
$(call inherit-product, device/lge/flashlmdd/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device identifiers

PRODUCT_NAME := lineage_flashlmdd
PRODUCT_DEVICE := flashlmdd
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V50 ThinQ
PRODUCT_MODEL := LM-V500

PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := flashlmdd_lao_eea
TARGET_VENDOR_DEVICE_NAME := flashlmdd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=flashlmdd \
    PRODUCT_NAME=flashlmdd_lao_com \
    PRIVATE_BUILD_DESC="flashlmdd_lao_com-user 10 QKQ1.191021.002 2000817367779 release-keys"

BUILD_FINGERPRINT="lge/flashlmdd_lao_com/flashlmdd:10/QKQ1.191021.002/2000817367779:user/release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model \
    ro.vendor.product.model \
    ro.product.system.model \
    ro.product.name \
    ro.product.vendor.name
