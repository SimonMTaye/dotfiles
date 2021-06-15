#!/usr/bin/env bash

# Number values that correspond to fan profiles
FAN_MAX=0
FAN_AUTO=2

# Number values that correspond to cooling behavior
THERMAL_NORMAL=0
THERMAL_BOOST=1
THERMAL_SILENT=2

# Locations of files that will be modified to change thermal behavior
FAN_FILE="/sys/devices/platform/asus-nb-wmi/hwmon/hwmon5/pwm1_enable"
THERMAL_FILE="/sys/devices/platform/asus-nb-wmi/throttle_thermal_policy"


if [[ $1 -eq 1 ]]; then
    echo $FAN_AUTO > $FAN_FILE
    echo $THERMAL_SILENT > $THERMAL_FILE
elif [[ $1 -eq 2 ]]; then
    echo $FAN_AUTO > $FAN_FILE
    echo $THERMAL_NORMAL > $THERMAL_FILE
elif [[ $1 -eq 3 ]]; then
    echo $FAN_MAX > $FAN_FILE
    echo $THERMAL_BOOST > $THERMAL_FILE
else
    echo "Usage: fan_ctrl [arg]"
    echo "\"1\": Silent"
    echo "\"2\": Normal"
    echo "\"3\": Boost"
fi
