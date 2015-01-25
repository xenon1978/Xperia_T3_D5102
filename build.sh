# Modify the following variable if you want to build
export CROSS_COMPILE="/home/prashi/android/android_prebuilt_toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi-"
export ARCH=arm
export SUBARCH=arm
make proj_SEAGULL_3G_defconfig
make -j8 CONFIG_NO_ERROR_ON_MISMATCH=y
