# Create symlinks for camera libraries for CamX Framework

LOCAL_PATH := $(call my-dir)

ifeq ($(filter sdm660 sm6125,$(TARGET_BOARD_PLATFORM)),)

include $(SONY_CLEAR_VARS)
LOCAL_MODULE := camera_symlinks
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)

library_names := \
    camera \

# Create symlinks to 64-bit camera libraries:
SONY_SYMLINKS := $(foreach p,$(library_names), \
    /odm/lib64/$p:$(TARGET_COPY_OUT_VENDOR)/lib64/$p \
)

include $(SONY_BUILD_SYMLINKS)

endif
