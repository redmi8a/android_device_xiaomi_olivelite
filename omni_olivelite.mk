$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
	$(LOCAL_PATH)/recovery.fstab:recovery.fstab \
	system/timezone/output_data/iana/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_DEVICE	:= olivelite
PRODUCT_NAME	:= omni_olivelite
PRODUCT_BRAND	:= Xiaomi
PRODUCT_MODEL	:= Redmi 8A
PRODUCT_MANUFACTURER := Xiaomi

BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := false

PRODUCT_PROPERTY_OVERRIDES := ro.treble.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.version.security_patch=2099-12-31 \
	ro.vendor.build.security_patch=2099-12-31
