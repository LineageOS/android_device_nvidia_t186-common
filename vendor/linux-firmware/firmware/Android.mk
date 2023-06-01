# Copyright (C) 2023 The Android Open Source Project
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

ifeq ($(TARGET_TEGRA_FIRMWARE_BRANCH),linux-firmware)
LOCAL_PATH := $(call my-dir)
T186_FIRMWARE_PATH := ../../../../../../kernel/nvidia/linux-firmware

DOWNSTREAM_BRANCH    := r32
T186_DOWNSTREAM_PATH := ../../../../../../vendor/nvidia/t186/$(DOWNSTREAM_BRANCH)/firmware

include $(CLEAR_VARS)
LOCAL_MODULE               := bl.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/acr/bl.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/acr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := ucode_load.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/acr/ucode_load.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/acr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs_bl.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/fecs_bl.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs_data.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/fecs_data.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs_inst.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/fecs_inst.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs_sig.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/fecs_sig.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpccs_bl.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/gpccs_bl.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpccs_data.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/gpccs_data.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpccs_inst.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/gpccs_inst.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpccs_sig.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/gpccs_sig.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sw_bundle_init.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/sw_bundle_init.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sw_method_init.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/sw_method_init.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sw_ctx.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/sw_ctx.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sw_nonctx.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/gr/sw_nonctx.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := desc.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/pmu/desc.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/pmu
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := image.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/pmu/image.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/pmu
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sig.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/gp10b/pmu/sig.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gp10b/pmu
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvdec.bin
LOCAL_SRC_FILES            := $(T186_DOWNSTREAM_PATH)/tegra18x/nvhost_nvdec030_ns.fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra186
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvenc.bin
LOCAL_SRC_FILES            := $(T186_DOWNSTREAM_PATH)/tegra18x/nvhost_nvenc061.fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra186
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvjpg.bin
LOCAL_SRC_FILES            := $(T186_DOWNSTREAM_PATH)/tegra18x/nvhost_nvjpg011.fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra186
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := vic04_ucode.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/tegra186/vic04_ucode.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra186
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := xusb.bin
LOCAL_SRC_FILES            := $(T186_FIRMWARE_PATH)/nvidia/tegra186/xusb.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra186
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)
endif
