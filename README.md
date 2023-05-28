# Android-emulator-starter-on-bat
.bat file for starting an android emulator



# Emulator Startup Script

This script is designed to automate the process of starting an emulator for Android development. It navigates to the emulator location, fetches the available emulator, and starts it.

## Prerequisites

- This script assumes that you have the Android SDK installed and configured correctly on your system.
- Ensure that the `%ANDROID_HOME%` environment variable is set to the path where the Android SDK is installed.

## Usage

1. Navigate to the directory containing the script.
2. Double click on the file to start.

## Explanation

- The `@echo off` command disables the echoing of commands in the script, making the output cleaner.

- The `@echo` command inserts a blank line in the console output for better readability.

- `cd %ANDROID_HOME%/tools` changes the directory to the location where the Android SDK tools are installed. This step assumes that the `%ANDROID_HOME%` environment variable is correctly set.

- The script attempts to fetch the available emulators using the `emulator -list-avds` command. It uses a for loop to iterate over the output and assigns the emulator name to the `emulator_device` variable.

- The `timeout /t 2 /nobreak > NUL` command introduces a 2-second delay to allow the system to process the emulator list.

- The fetched emulator name is displayed using the `@echo` command.

- Another 2-second delay is added for better synchronization using the `timeout /t 2 /nobreak > NUL` command.

- The last emulator name is used if multiple emulators are installed in the system. If you need to specify the emulator, open the `.bat` file in a text editor and set the `emulator_device` variable manually.

- The script proceeds to start the emulator using the `emulator -avd %emulator_device%` command. It launches the emulator with the specified device name stored in the emulator_device variable.

- The `pause` command is added to keep the console window open after the script completes, allowing users to view the emulator output or any potential errors.

## Troubleshooting

- If the script fails to locate the emulator, ensure that the `%ANDROID_HOME%` environment variable is set correctly.
- Verify that the Android SDK tools are installed and accessible from the command line.
- If you encounter any issues or errors, consult the official Android documentation or seek assistance from the Android development community.
