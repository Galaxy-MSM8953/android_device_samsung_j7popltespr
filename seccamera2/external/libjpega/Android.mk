LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PRELINK_MODULE:=false

LOCAL_C_INCLUDES += $(LOCAL_PATH)\
	$(LOCAL_PATH)/libjpeg/\
	$(LOCAL_PATH)/libexif/\
	$(LOCAL_PATH)/libexif/canon/\
	$(LOCAL_PATH)/libexif/fuji/\
	$(LOCAL_PATH)/libexif/olympus/\
	$(LOCAL_PATH)/libexif/pentax/

LOCAL_SHARED_LIBRARIES:= \
	libexifa

LOCAL_SRC_FILES:=\
	jpeg-data.c\
	jpeg-marker.c\
	exif-i18n.c

#LOCAL_CFLAGS:=-O2 -g
#LOCAL_CFLAGS+=-DHAVE_CONFIG_H -D_U_="__attribute__((unused))" -Dlinux -D__GLIBC__ -D_GNU_SOURCE

LOCAL_MODULE:= libjpega
ifneq ($(TARGET_2ND_ARCH),)
    LOCAL_MODULE_PATH_32 := $(TARGET_OUT_VENDOR)/lib
    LOCAL_MODULE_PATH_64 := $(TARGET_OUT_VENDOR)/lib64
else
    LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
endif

include $(BUILD_SHARED_LIBRARY)
