#
# Copyright (C) 2023 Project-Elixir
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Bootanimation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# NFC
TARGET_HAVE_SEC_NFC := true

# UDFPS ICONS
EXTRA_UDFPS_ICONS := true

# Face Unlock 
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := Spacewar
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A063
PRODUCT_NAME := derp_Spacewar

PRODUCT_SYSTEM_NAME := Spacewar
PRODUCT_SYSTEM_DEVICE := Spacewar
PRODUCT_CHARACTERISTICS := nosdcard

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-nothing

# Override device name for Play Store.
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Spacewar \
    TARGET_PRODUCT=Spacewar
    
BUILD_FINGERPRINT := Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1669043157:user/release-keys
