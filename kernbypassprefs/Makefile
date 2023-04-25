ARCHS = arm64 arm64e

SDK=${THEOS_SDKS}/iPhoneOS12.4.sdk

BUNDLE_NAME = KernBypassPrefs
$(BUNDLE_NAME)_FILES = AXRootListController.m
$(BUNDLE_NAME)_INSTALL_PATH = /Library/PreferenceBundles
$(BUNDLE_NAME)_FRAMEWORKS = UIKit
$(BUNDLE_NAME)_PRIVATE_FRAMEWORKS = Preferences
$(BUNDLE_NAME)_LDFLAGS += ./SpringBoardServices.tbd -isysroot ${SDK} -Wl,-syslibroot ${SDK}
$(BUNDLE_NAME)_CFLAGS = -fobjc-arc -isysroot ${SDK}

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(BUNDLE_NAME).plist$(ECHO_END)
