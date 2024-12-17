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

TARGET_TEGRA_VERSION         := t186
TARGET_TEGRA_FIRMWARE_BRANCH ?= r32

# Properties
include device/nvidia/t186-common/properties.mk

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += device/nvidia/t186-common

PRODUCT_COPY_FILES += \
    device/nvidia/t186-common/initfiles/init.t18x.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.t18x.rc \
    device/nvidia/t186-common/initfiles/init.t18x_common.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.t18x_common.rc \
    device/nvidia/tegra-common/initfiles/init.tlk.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.tlk.rc \
    device/nvidia/t186-common/initfiles/ueventd.t186ref.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc

include device/nvidia/tegra-common/tegra.mk
