#!/bin/bash

# Set your API key here, device id and device sku
API_KEY=
DEVICE_SKU=
DEVICE_ID=

# Parse command line arguments
if [[ "$1" == "-off" ]]; then
    VALUE=0
else
    VALUE=1
fi

PAYLOAD='{"requestId":"uuid","payload":{"sku":"'"$SKU"'","device":"'"$DEVICE"'","capability":{"type":"devices.capabilities.on_off","instance":"powerSwitch","value":'$VALUE'}}}'

# Execute the curl command with silent mode and capture output
response=$(curl -s -X POST \
  --header "Content-Type: application/json" \
  --header "Govee-API-Key: $API_KEY" \
  -d "$PAYLOAD" \
  "https://openapi.api.govee.com/router/api/v1/device/control")
