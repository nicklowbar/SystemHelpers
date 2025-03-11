#!/usr/bin/bash

echo "Starting mirror-phone-display.sh"

echo "Checking if adb is installed..."
if ! command -v adb &>/dev/null; then
    echo "adb is not installed. Please install it first."
    exit 1
fi

echo "Checking if scrcpy is installed..."
if ! command -v scrcpy &>/dev/null; then
    echo "scrcpy is not installed. Please install it first."
    exit 1
fi

echo "Finding Serial numbers of connected android devices..."

# acquire the serial number of the Android device
ANDROID_SERIAL="$(adb deVvices | grep device | awk '{print $1}')"

echo "Setting default port to 5555..."
ANDROID_PORT=5555
#ANDROID_PORT=5555
# check if ANDROID_SERIAL is empty
if [ -z "$ANDROID_SERIAL" ]; then
    echo "No Android device found or unable to retrieve serial number."
    exit 1
fi

echo "Android device Serial: $ANDROID_SERIAL"

# Run scrcpy with the specified options
echo "Running scrcpy..."
scrcpy --video-bit-rate 2M --max-size 1024 -s ${ANDROID_SERIAL}