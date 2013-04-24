LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# copy to obj/ the prebuilts needed to build open source libraries
-include device/motorola/qinara/prebuilt.mk

# include the non-open-source counterpart to this file
-include vendor/motorola/qinara/AndroidBoardVendor.mk
