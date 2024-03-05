#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# FORCE TO LET THE SCRIPT TO TAKE NOTE THAT THERE IS ALREADY A KERNEL
export OF_FORCE_PREBUILT_KERNEL=1
export FOX_DRASTIC_SIZE_REDUCTION="1"

# Mkbootimage
sudo apt install nano
git clone https://gitlab.com/EdwinT2/avb_tool -b main out/host/linux-x86/bin
sudo chmod +rwx out/host/linux-x86/bin/avbtool
chmod a+x device/samsung/a12s/mkbootimg
add_lunch_combo twrp_a12s-eng




# General Configurations
export ALLOW_MISSING_DEPENDENCIES=true
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export LC_ALL="C"
export OF_MAINTAINER="SUFandom"
export FOX_BUILD_TYPE="Stable"
export FOX_VERSION="R11-R12"
#export FOX_TARGET_DEVICES="a12s,SM-A127M,SM-A127F,A127M,A127F,A127x"
#export FOX_BUILD_DEVICE=a12s
export OF_CLASSIC_LEDS_FUNCTION=0
export FOX_DELETE_AROMAFM=0
export OF_CLOCK_POS=1
export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
export OF_FORCE_PREBUILT_KERNEL=1
export OF_NO_SPLASH_CHANGE=0
export OF_STATUS_INDENT_RIGHT=48
export OF_STATUS_INDENT_LEFT=48
export OF_WIPE_METADATA_AFTER_DATAFORMAT=1
export OF_OPTIONS_LIST_NUM=8

# Partition Configurations
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/by-name/recovery"

# Security Configurations
export OF_ADVANCED_SECURITY=1
#export OF_KEEP_DM_VERITY=1
export OF_DISABLE_FORCED_ENCRYPTION=1
export OF_FORCE_DISABLE_FORCED_ENCRYPTION=1
export OF_USE_SYSTEM_FINGERPRINT=1

# Tools and Utilities Configurations
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_USE_LZMA_COMPRESSION=1
export FOX_REPLACE_BUSYBOX_PS=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_SED_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_UNZIP_BINARY=1
export FOX_USE_XZ_UTILS=1
export OF_ENABLE_LPTOOLS=1
export OF_ENABLE_FS_COMPRESSION=1
export OF_USE_LOCKSCREEN_BUTTON=1

# Newer Functions For Me Dark (TheDarkDeath788 )
export OF_CHECK_OVERWRITE_ATTEMPTS=1
export FOX_VANILLA_BUILD=1
export FOX_PORTS_TMP=1
export OF_OTA_BACKUP_STOCK_BOOT_IMAGE=1
export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1

# Specific Features Configurations
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=0
export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export FOX_VARIANT="AOSP"
export FOX_NO_SAMSUNG_SPECIAL=2
export OF_PATCH_AVB20=1
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1
export OF_SCREEN_H=2400
export FOX_BUGGED_AOSP_ARB_WORKAROUND="1695707220" # [Tue Feb 27 2024 01:07:00 GMT]

# File Paths Configurations
#export OF_FL_PATH1="/sys/devices/virtual/camera/flash/rear_flash"
export OF_FL_PATH1="/system/flashlight"
export OF_FL_PATH2=""
export OF_FLASHLIGHT_ENABLE=1
#export OF_MAINTAINER_AVATAR="${GITHUB_WORKSPACE}/OrangeFox/fox_${{ github.event.inputs.MANIFEST_BRANCH }}/out/target/product/${{ github.event.inputs.DEVICE_NAME }}/maintainer.png"
#export OF_MAINTAINER_AVATAR="/home/runner/work/A12s-DevTree/A12s-DevTree/OrangeFox/fox_12.1/device/samsung/a12s/maintainer.png"
export OF_MAINTAINER_AVATAR=$PWD/device/samsung/a12s/maintainer.png

# Applications Configurations
export FOX_ENABLE_APP_MANAGER=1

# Custom Binaries to SD Card Configuration
export FOX_CUSTOM_BINS_TO_SDCARD=3

#Ofox 11
#export FOX_R11=1


add_lunch_combo twrp_a12s-eng
