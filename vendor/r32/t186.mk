# Copyright (C) 2020 The LineageOS Project
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

LOCAL_PATH := device/nvidia/t186-common/vendor/r32
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

T186_FIRMWARE_PATH := vendor/nvidia/t186/r32/firmware

# GPU firmware
PRODUCT_COPY_FILES += \
    $(T186_FIRMWARE_PATH)/gp10b/acr_ucode_prod.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/acr_ucode_prod.bin \
    $(T186_FIRMWARE_PATH)/gp10b/fecs.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/fecs.bin \
    $(T186_FIRMWARE_PATH)/gp10b/fecs_sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/fecs_sig.bin \
    $(T186_FIRMWARE_PATH)/gp10b/gpccs.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/gpccs.bin \
    $(T186_FIRMWARE_PATH)/gp10b/gpccs_sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/gpccs_sig.bin \
    $(T186_FIRMWARE_PATH)/gp10b/gpmu_ucode.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/gpmu_ucode.bin \
    $(T186_FIRMWARE_PATH)/gp10b/gpmu_ucode_desc.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/gpmu_ucode_desc.bin \
    $(T186_FIRMWARE_PATH)/gp10b/gpmu_ucode_image.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/gpmu_ucode_image.bin \
    $(T186_FIRMWARE_PATH)/gp10b/gpu2cde.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/gpu2cde.bin \
    $(T186_FIRMWARE_PATH)/gp10b/NETA_img.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/NETA_img.bin \
    $(T186_FIRMWARE_PATH)/gp10b/pmu_bl.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/pmu_bl.bin \
    $(T186_FIRMWARE_PATH)/gp10b/pmu_sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gp10b/pmu_sig.bin

# General firmware
PRODUCT_COPY_FILES += \
    $(T186_FIRMWARE_PATH)/tegra18x/nvhost_nvdec030_ns.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra18x/nvhost_nvdec030_ns.fw \
    $(T186_FIRMWARE_PATH)/tegra18x/nvhost_nvenc061.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra18x/nvhost_nvenc061.fw \
    $(T186_FIRMWARE_PATH)/tegra18x/nvhost_nvjpg011.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra18x/nvhost_nvjpg011.fw \
    $(T186_FIRMWARE_PATH)/tegra18x/vic04_ucode.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra18x/vic04_ucode.bin

# Xusb firmware
PRODUCT_COPY_FILES += \
    $(T186_FIRMWARE_PATH)/xusb/tegra18x_xusb_firmware:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra186/xusb.bin

PRODUCT_PACKAGES += \
    tegra18x_xusb_firmware_symlink


# Recovery / Boot Ramdisk
ifeq ($(TARGET_TEGRA_KERNEL),4.9)
PRODUCT_COPY_FILES += \
    $(T186_FIRMWARE_PATH)/xusb/tegra18x_xusb_firmware:recovery/root/lib/firmware/tegra18x_xusb_firmware \
    $(T186_FIRMWARE_PATH)/xusb/tegra18x_xusb_firmware:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/tegra18x_xusb_firmware
else
PRODUCT_COPY_FILES += \
    $(T186_FIRMWARE_PATH)/xusb/tegra18x_xusb_firmware:recovery/root/lib/firmware/nvidia/tegra186/xusb.bin \
    $(T186_FIRMWARE_PATH)/xusb/tegra18x_xusb_firmware:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/nvidia/tegra186/xusb.bin
endif
