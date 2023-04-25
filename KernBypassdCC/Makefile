ARCHS = arm64 arm64e

TARGET = iphone:14.0:12.0

SDK=${THEOS_SDKS}/iPhoneOS12.4.sdk

BUNDLE_NAME = KernBypassdCC
$(BUNDLE_NAME)_FILES = Switch.x
$(BUNDLE_NAME)_CFLAGS = -fobjc-arc -I$(THEOS_PROJECT_DIR)/headers -isysroot ${SDK}
$(BUNDLE_NAME)_LDFLAGS = Frameworks/ControlCenterUIKit.tbd -isysroot ${SDK} -Wl,-syslibroot ${SDK}
$(BUNDLE_NAME)_FRAMEWORKS = UIKit
$(BUNDLE_NAME)_LIBRARIES = substrate
$(BUNDLE_NAME)_INSTALL_PATH = /Library/ControlCenter/Bundles

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/bundle.mk
