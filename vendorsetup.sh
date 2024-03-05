#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# FORCE TO LET THE SCRIPT TO TAKE NOTE THAT THERE IS ALREADY A KERNEL
export OF_FORCE_PREBUILT_KERNEL=1
export FOX_DRASTIC_SIZE_REDUCTION="1"

add_lunch_combo twrp_a12s-eng
