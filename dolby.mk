# dolby.mk path
LOCAL_PATH := hardware/dolby

# Add dolby path to soong namespaces
PRODUCT_SOONG_NAMESPACES += \
	$(LOCAL_PATH)

DOLBY_PATH := $(LOCAL_PATH)/dolby_manager

# Import dolby manager permissions etc.
PRODUCT_COPY_FILES += \
	$(DOLBY_PATH)/etc/default-permissions/default-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default-permissions/default-com.dolby.daxservice.xml \
	$(DOLBY_PATH)/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/privapp-com.dolby.daxservice.xml \
	$(DOLBY_PATH)/etc/sysconfig/config-com.dolby.daxappui2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/config-com.dolby.daxappui2.xml \
	$(DOLBY_PATH)/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/config-com.dolby.daxservice.xml

# Sony Dolby Manger
PRODUCT_PACKAGES += \
	daxService \
	DolbySound

# Custom dolby sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
	$(LOCAL_PATH)/vendor/selinux

# Dolby configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/vendor/etc/dolby/dax-default.xml \
	$(LOCAL_PATH)/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/vendor/etc/media_codecs_dolby_audio.xml

# Dolby properties
PRODUCT_VENDOR_PROPERTIES += \
	ro.vendor.dolby.dax.version=DAX3_3.7.0.8_r1

# System init files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc

# Dolby libs
PRODUCT_PACKAGES += \
	libdlbvol \
	libswdap \
	libswgamedap \
	libswvqe \
	libdapparamstorage \
	libdeccfg \
	libdlbdsservice \
	libdlbpreg \
	libstagefright_soft_ac4dec \
	libstagefright_soft_ddpdec \
	libstagefrightdolby \
	vendor.dolby.hardware.dms@2.0 \
	vendor.dolby.hardware.dms@2.0-impl \
	vendor.dolby.hardware.dms@2.0-service \
