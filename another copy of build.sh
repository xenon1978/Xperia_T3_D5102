# Modify the following variable if you want to build
make proj_SEAGULL_3G_defconfig
make ARCH=arm CROSS_COMPILE=~/android_prebuilt_toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi- menuconfig
export CROSS_COMPILE="/home/prashi/android/android_prebuilt_toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi-"
export ARCH=arm
export SUBARCH=arm
export KBUILD_BUILD_USER="Prashi"
export KBUILD_BUILD_HOST="Xenon"
make proj_SEAGULL_3G_defconfig
make -j8 CONFIG_NO_ERROR_ON_MISMATCH=y
make ARCH=arm CROSS_COMPILE=$CROSS_COMPILE -j8  -C  M=$PWD CONFIG_PRONTO_WLAN=m CONFIG_PRIMA_WLAN_LFR=y KERNEL_BUILD=1 WLAN_ROOT=$PWD

