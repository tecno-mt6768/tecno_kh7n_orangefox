#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from KH7n device
$(call inherit-product, device/tecno/KH7n/device.mk)

# Inherit some common TWRP stuff
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := KH7n
PRODUCT_NAME := twrp_KH7n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KH7n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_RELEASE_NAME := Tecno Spark 9 Pro

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=TECNO-KH7n \
    PRODUCT_NAME=KH7n-OP \
    PRIVATE_BUILD_DESC="sys_kh7n_h6919-user 12 SP1A.210812.016 501931 release-keys"

    BUILD_FINGERPRINT := TECNO/KH7n-OP/TECNO-KH7n:12/SP1A.210812.016/231212V1108:user/release-keys
