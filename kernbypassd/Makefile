ARCHS = arm64 arm64e

SDK=${THEOS_SDKS}/iPhoneOS12.4.sdk

TOOL_NAME = kernbypassd
$(TOOL_NAME)_FILES = kernbypassd.m
$(TOOL_NAME)_CFLAGS = -objc-arc -isysroot ${SDK}
$(TOOL_NAME)_LDFLAGS += -isysroot ${SDK} -Wl,-syslibroot ${SDK}
$(TOOL_NAME)_CODESIGN_FLAGS = -S../ent.plist

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tool.mk
