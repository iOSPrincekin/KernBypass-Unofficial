#!/bin/bash

THEOS_DIR=${ROOT_DIR}/.theos/
THEOS_OBJ_DIR=${THEOS_DIR}/obj/
DEBS_DIR=${ROOT_DIR}/debs/
KERNBYPASS_DIR=${DEBS_DIR}/kernbypass_0.0.5_iphoneos-arm/

DEBIAN_DIR=${KERNBYPASS_DIR}/DEBIAN/
KERNBYPASS_LIBRARY_DIR=${KERNBYPASS_DIR}/Library/
CONTROLCENTER_DIR=${KERNBYPASS_LIBRARY_DIR}/ControlCenter/
CONTROLCENTER_BUNDLES_DIR=${CONTROLCENTER_DIR}/Bundles/

MOBILESUBSTRATE_DIR=${KERNBYPASS_LIBRARY_DIR}/MobileSubstrate/
DYNAMICLIBRARIES_DIR=${MOBILESUBSTRATE_DIR}/DynamicLibraries/


PREFERENCEBUNDLES_DIR=${KERNBYPASS_LIBRARY_DIR}/PreferenceBundles/
PREFERENCELOADER_DIR=${KERNBYPASS_LIBRARY_DIR}/PreferenceLoader/

KERNBYPASS_USR_DIR=${KERNBYPASS_DIR}/usr/
KERNBYPASS_USR_BIN_DIR=${KERNBYPASS_USR_DIR}/bin/

KERNBYPASS_VAR_DIR=${KERNBYPASS_DIR}/var/



changerootfs_exec=${THEOS_OBJ_DIR}/changerootfs
changerootfs_exec_dist=${KERNBYPASS_USR_BIN_DIR}
kernbypassd_exec=${THEOS_OBJ_DIR}/kernbypassd
kernbypassd_exec_dist=${KERNBYPASS_USR_BIN_DIR}
preparerootfs_exec=${THEOS_OBJ_DIR}/preparerootfs
preparerootfs_exec_dist=${KERNBYPASS_USR_BIN_DIR}

prerm_exec=${THEOS_OBJ_DIR}/prerm
prerm_exec_dist=${DEBIAN_DIR}

KernBypassdCC_bundle=${THEOS_OBJ_DIR}/KernBypassdCC.bundle
KernBypassdCC_bundle_dist=${CONTROLCENTER_BUNDLES_DIR}
KernBypassPrefs_bundle=${THEOS_OBJ_DIR}/KernBypassPrefs.bundle
KernBypassPrefs_bundle_dist=${PREFERENCEBUNDLES_DIR}
zzzzzzzzzNotifyChroot_dylib=${THEOS_OBJ_DIR}/zzzzzzzzzNotifyChroot.dylib
zzzzzzzzzNotifyChroot_dylib_dist=${DYNAMICLIBRARIES_DIR}
