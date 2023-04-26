#!/bin/bash
# 路径
BASEDIR=$(dirname "$0")
cd ${BASEDIR}
BASEDIR=`pwd`
# 根目录
ROOT_DIR=${BASEDIR}/../
source env.sh


cp ${changerootfs_exec} ${changerootfs_exec_dist}

cp ${kernbypassd_exec} ${kernbypassd_exec_dist}

cp ${preparerootfs_exec} ${preparerootfs_exec_dist}

sudo cp ${prerm_exec} ${prerm_exec_dist}

cp -R ${KernBypassdCC_bundle} ${KernBypassdCC_bundle_dist}

cp -R ${KernBypassPrefs_bundle} ${KernBypassPrefs_bundle_dist}

cp ${zzzzzzzzzNotifyChroot_dylib} ${zzzzzzzzzNotifyChroot_dylib_dist}






