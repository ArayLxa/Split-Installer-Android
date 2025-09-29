#!/system/bin/sh
# This script is run when the module is removed.

MODDIR=${0%/*}

# Remove any leftover aapt2 binary (KernelSU overlay should handle cleanup anyway)
if [ -f /data/adb/modules/aapt2-root/system/bin/aapt2 ]; then
    rm -f /data/adb/modules/aapt2-root/system/bin/aapt2
fi