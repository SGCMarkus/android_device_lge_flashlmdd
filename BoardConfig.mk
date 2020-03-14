#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/lge/flashlmdd

# inherit from common v50
-include device/lge/sm8150-common/BoardConfigCommon.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hardware=flashlmdd
TARGET_KERNEL_CONFIG := vendor/lineage_flash_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4336910336
BOARD_USERDATAIMAGE_PARTITION_SIZE := 107715436544

# Recovery
TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/recovery/recovery.wipe
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.flashlmdd
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90

# Security Patch Level
VENDOR_SECURITY_PATCH := 2020-01-01

# inherit from the proprietary version
-include vendor/lge/flashlmdd/BoardConfigVendor.mk
