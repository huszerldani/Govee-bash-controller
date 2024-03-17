# Light Control Script (light.sh)

This script allows you to control a Govee smart device using their API. It provides a simple interface to turn the device on or off.

## Prerequisites

Before using this script, ensure you have the following:

- API key from Govee API (You can get it from [Govee Developer Portal](https://developer.govee.com))
- Device SKU: SKU (Stock Keeping Unit) of your Govee device
- Device ID: Unique identifier of your Govee device

## Usage

1. Set your API key, device SKU, and device ID in the script.
2. Run the script with the following command:
    ```bash
    ./light.sh [options]
    ```
   Replace `[options]` with:
   - No option: Turns the device on.
   - `-off`: Turns the device off.

## Example

```bash
./light.sh           # Turns the device on
./light.sh -off      # Turns the device off
