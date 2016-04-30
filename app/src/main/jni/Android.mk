LOCAL_PATH := $(call my-dir)
OPENCV_ANDROID_SDK := /Users/Jordan/Downloads/OpenCV-android-sdk

include $(CLEAR_VARS)
include $(OPENCV_ANDROID_SDK)/sdk/native/jni/OpenCV.mk

#OPENCV_CAMERA_MODULES:=off
#OPENCV_INSTALL_MODULES:=off
#OPENCV_LIB_TYPE:=SHARED


LOCAL_SRC_FILES  := DetectionBasedTracker_jni.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_LDLIBS     += -llog -ldl

LOCAL_MODULE     := detection_based_tracker

include $(BUILD_SHARED_LIBRARY)
