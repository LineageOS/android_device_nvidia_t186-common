# Copyright (C) 2023-2024 The LineageOS Project
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

T186_FIRMWARE_PATH := external/linux-firmware-mainline/firmware

DOWNSTREAM_BRANCH    := r32
T186_DOWNSTREAM_PATH := vendor/nvidia/t186/$(DOWNSTREAM_BRANCH)/firmware

# Upstream firmware
PRODUCT_PACKAGES += \
    linux_firmware_nvidia-tegra186

# General firmware
PRODUCT_COPY_FILES += \
    $(T186_DOWNSTREAM_PATH)/tegra18x/nvhost_nvdec030_ns.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra186/nvdec.bin \
    $(T186_DOWNSTREAM_PATH)/tegra18x/nvhost_nvenc061.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra186/nvenc.bin \
    $(T186_DOWNSTREAM_PATH)/tegra18x/nvhost_nvjpg011.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra186/nvjpg.bin


# Recovery / Boot Ramdisk
PRODUCT_COPY_FILES += \
    $(T186_FIRMWARE_PATH)/nvidia/tegra186/xusb.bin:recovery/root/lib/firmware/nvidia/tegra186/xusb.bin \
    $(T186_FIRMWARE_PATH)/nvidia/tegra186/xusb.bin:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/nvidia/tegra186/xusb.bin
