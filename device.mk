# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
# # Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
 $(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
 $(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# define hardware platform
PRODUCT_PLATFORM := $(PRODUCT_PLATFORM)

DEVICE_PATH := device/xiaomi/sirius

# Dynamic partition stuff
PRODUCT_BUILD_SUPER_PARTITION := true
BOARD_BUILD_SUPER_IMAGE_BY_DEFAULT := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true
BOARD_BUILD_PRODUCT_IMAGE := true
PRODUCT_SHIPPING_API_LEVEL := 31

# Encryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl.recovery

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0.vendor

# Keystore
PRODUCT_PACKAGES += \
    android.system.keystore2

# tzdata
PRODUCT_PACKAGES += \
    tzdata_twrp
