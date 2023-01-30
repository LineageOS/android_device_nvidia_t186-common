# Copyright (C) 2023 The LineageOS Project
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

# Needs to be run by the host
function chmod_tegraflash_t186() {
    find ${LINEAGE_ROOT}/${OUTDIR}/t186/tegraflash -type f -exec chmod 755 {} \;
}

# tegrasign_v3 tries to write the output file to its local dir, let's instead write to cwd
function patch_tegrasign_v3_t186() {
  sed -i "s|current_dir_path + '/|'|" ${LINEAGE_ROOT}/${OUTDIR}/t186/tegraflash/tegrasign_v3_internal.py
  sed -i "/current_dir_path/d" ${LINEAGE_ROOT}/${OUTDIR}/t186/tegraflash/tegrasign_v3_internal.py
}

chmod_tegraflash_t186;
patch_tegrasign_v3_t186;
