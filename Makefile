ARCHS = arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1

TARGET := iphone:clang:14.0:12.1.2
MIN_IOS_SDK_VERSION = 11.0

THEOS_DEVICE_IP = localhost -p 2222

TOOL_NAME = preparerootfs changerootfs

SDK=${THEOS_SDKS}/iPhoneOS12.4.sdk
preparerootfs_FILES = preparerootfs.m kernel.m libdimentio.c vnode_utils.c
preparerootfs_CFLAGS = -objc-arc -D USE_DEV_FAKEVAR -isysroot ${SDK}
preparerootfs_FRAMEWORKS = Foundation IOKit
preparerootfs_CODESIGN_FLAGS = -Sent.plist

changerootfs_FILES = changerootfs.m kernel.m libdimentio.c vnode_utils.c
changerootfs_CFLAGS = -objc-arc -isysroot ${SDK}
changerootfs_FRAMEWORKS = Foundation IOKit
changerootfs_CODESIGN_FLAGS = -Sent.plist

SUBPROJECTS += zzzzzzzzznotifychroot
SUBPROJECTS += kernbypassprefs
SUBPROJECTS += kernbypassd
SUBPROJECTS += prerm
SUBPROJECTS += KernBypassdCC

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tool.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

LIB_DIR := lib

ifdef USE_JELBREK_LIB
	preparerootfs_LDFLAGS = -isysroot ${SDK} -Wl,-syslibroot ${SDK}  $(LIB_DIR)/jelbrekLib.dylib
	changerootfs_LDFLAGS = -isysroot ${SDK} -Wl,-syslibroot ${SDK}  $(LIB_DIR)/jelbrekLib.dylib
else
	preparerootfs_LDFLAGS = -isysroot ${SDK} -Wl,-syslibroot ${SDK}
	changerootfs_LDFLAGS = -isysroot ${SDK} -Wl,-syslibroot ${SDK}
endif



ifdef USE_JELBREK_LIB
before-package::
	$(THEOS)/toolchain/linux/iphone/bin/ldid -S./ent.plist $(THEOS_STAGING_DIR)/usr/lib/jelbrekLib.dylib
endif

before-package::
	mkdir -p $(THEOS_STAGING_DIR)/usr/lib/
	cp $(LIB_DIR)/jelbrekLib.dylib $(THEOS_STAGING_DIR)/usr/lib
	cp ./layout/DEBIAN/* $(THEOS_STAGING_DIR)/DEBIAN
	chmod -R 755 $(THEOS_STAGING_DIR)
	chmod 6755 $(THEOS_STAGING_DIR)/usr/bin/kernbypassd
	chmod 666 $(THEOS_STAGING_DIR)/DEBIAN/control

after-package::
	make clean

after-install::
	install.exec "sbreload"
