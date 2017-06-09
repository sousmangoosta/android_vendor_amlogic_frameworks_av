LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        SoftWmastd.cpp  \
        bitstream.c     \
        wma.c           \
        wmadec.c        \
        WmaDecApi.c     \
        

LOCAL_C_INCLUDES := \
        frameworks/av/media/libstagefright/include \
        frameworks/native/include/media/openmax \
        $(LOCAL_PATH)/../../include

LOCAL_SHARED_LIBRARIES := \
        libstagefright libstagefright_omx \
        libstagefright_foundation libutils liblog

LOCAL_MODULE := libstagefright_soft_wmadec
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

