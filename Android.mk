LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), olivelite)
	include $(call all-makefiles-under, $(LOCAL_PATH))
endif
