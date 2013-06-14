# Copyright (C) 2012 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardVendorConfig.mk can override it



# Kernel Config
TARGET_KERNEL_CONFIG := cyanogenmod_galaxys4gmtd_defconfig

TARGET_RECOVERY_INITRC := device/samsung/galaxys4gmtd/rdisk/recovery.rc

# Kernel Source
TARGET_KERNEL_SOURCE := kernel/samsung/aries

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/galaxys4gmtd

# Camera
BOARD_CAMERA_HAVE_REVERSE_FFC := true

# Video Devices
BOARD_V4L2_DEVICE := /dev/video1
BOARD_CAMERA_DEVICE := /dev/video0
BOARD_SECOND_CAMERA_DEVICE := /dev/video2

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 367001600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 581959680
BOARD_FLASH_BLOCK_SIZE := 4096

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/galaxys4gmtd/bdroid


BOARD_CUSTOM_BOOTIMG_MK := device/samsung/galaxys4gmtd/shbootimg.mk

TARGET_OTA_ASSERT_DEVICE := aries,galaxys4g,galaxys4gmtd,SGH-T959V,SGH-T959W

# Import the aries-common BoardConfigCommon.mk
include device/samsung/aries-common/BoardConfigCommon.mk 
