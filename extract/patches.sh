# Copyright (C) 2021 The LineageOS Project
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

# Patch tx2 xusb firmware to fix issues with usb hubs. Sourced from:
# https://forums.developer.nvidia.com/t/xbox-360-controller-through-usb-hub-broken-in-jetpack-4-x-works-in-jetpack-3-x-not-enough-host-c/110621/2
function patch_tx2_xusb() {
  git -C ${LINEAGE_ROOT}/${OUTDIR} apply ${LINEAGE_ROOT}/device/nvidia/t186-common/extract/tx2_xusb.patch
}

patch_tx2_xusb;
