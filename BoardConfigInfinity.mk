#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/google/pantah
# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_pantah

# Kernel modules
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/modules.blocklist.vendor_kernel_boot
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW := $(strip $(shell cat $(DEVICE_PATH)/modules.load.vendor_kernel_boot))
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD += $(BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW)
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES += $(addprefix $(KERNEL_MODULE_DIR)/, $(notdir $(BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW)))
