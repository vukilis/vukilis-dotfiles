#!/bin/bash

TEMP=$(sensors | grep "Package id 0:" | tr -d '+' | awk '{print $4}' | cut -d. -f1)

COL_COLD="#e5b566"  # Cyan/Blue
COL_NORM="#e58e66"  # Your Gold (shade1)
COL_HOT="#E2443D"   # Red

if [ "$TEMP" -lt 50 ]; then
    ICON=""
    COLOR=$COL_COLD
elif [ "$TEMP" -lt 75 ]; then
    ICON=""
    COLOR=$COL_NORM
else
    ICON=""
    COLOR=$COL_HOT
fi

echo "%{F$COLOR}$ICON $TEMP°C%{F-}"