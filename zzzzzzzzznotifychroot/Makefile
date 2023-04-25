ARCHS = arm64 arm64e

SDK=${THEOS_SDKS}/iPhoneOS12.4.sdk


TWEAK_NAME = zzzzzzzzzNotifyChroot
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -isysroot ${SDK}
$(TWEAK_NAME)_LDFLAGS = -isysroot ${SDK} -Wl,-syslibroot ${SDK}


include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
