#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

set -e

DEVICE=j7popltespr
VENDOR=samsung

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

LINEAGE_ROOT="${MY_DIR}/../../.."

HELPER="${LINEAGE_ROOT}/vendor/lineage/build/tools/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true
SECTION=
KANG=

while [ "$1" != "" ]; do
    case "$1" in
        -n | --no-cleanup )     CLEAN_VENDOR=false
                                ;;
        -k | --kang)            KANG="--kang"
                                ;;
        -s | --section )        shift
                                SECTION="$1"
                                CLEAN_VENDOR=false
                                ;;
        * )                     SRC="$1"
                                ;;
    esac
    shift
done

if [ -z "${SRC}" ]; then
    SRC=adb
fi

function blob_fixup() {
        case "${1}" in
        vendor/lib/vendor.samsung.hardware.radio@1.1_vendor.so | vendor/lib64/vendor.samsung.hardware.radio@1.1_vendor.so)
                sed -i -e 's/android.hardware.radio@1.0.so/android.hardware.rav27@1.0.so/g' "${2}"
        ;;
        vendor/lib/vendor.qti.gnss@1.0_vendor.so | vendor/lib64/vendor.qti.gnss@1.0_vendor.so)
                sed -i -e 's/android.hardware.gnss@1.0.so/android.hardware.gn27@1.0.so/g' "${2}"
        ;;
        vendor/lib/hw/audio.primary.msm8953.so)
                sed -i -e 's|libtinycompress_vendor.so|libtinycompress.so\x0\x0\x0\x0\x0\x0\x0|g' "${2}"
        ;;
        vendor/lib/vendor.samsung.hardware.camera.device@3.2.so)
                sed -i -e 's/android.hardware.camera.device@3.2.so/android.hardware.camera.devi27@3.2.so/g' "${2}"
                sed -i -e 's/android.hardware.graphics.common@1.0.so/android.hardware.graphics.comm27@1.0.so/g' "${2}"
        ;;
        vendor/bin/hw/vendor.samsung.hardware.camera.provider@2.4-service)
                patchelf --remove-needed android.hardware.camera.device@3.4.so "${2}"
                patchelf --remove-needed vendor.samsung.hardware.camera.device@3.4.so "${2}"
        ;;
        esac
}

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${LINEAGE_ROOT}" false "${CLEAN_VENDOR}"

extract "${MY_DIR}/proprietary-files.txt" "${SRC}" ${KANG} --section "${SECTION}"

"${MY_DIR}/setup-makefiles.sh"
