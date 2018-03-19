LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= rfcommtest.cpp

LOCAL_C_INCLUDES += . \
    system/bt/stack/include \
    system/bt/include \
    system/bt/stack/l2cap \
    system/bt/utils/include \
    system/bt/ \
    system/bt/types \
    system/bt/btif/include \
    vendor/qcom/opensource/bluetooth_ext/system_bt_ext/include \
    vendor/qcom/opensource/bluetooth_ext/vhal/include \
    external/libchrome \

LOCAL_CFLAGS += -DHAS_NO_BDROID_BUILDCFG
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := debug optional
LOCAL_MODULE:= rfc

LOCAL_SHARED_LIBRARIES += libcutils   \
                          libutils    \
                          libhardware \
                          libchrome \
                          libhardware_legacy

LOCAL_STATIC_LIBRARIES += libbluetooth-types \

LOCAL_MULTILIB := 32

include $(BUILD_EXECUTABLE)
