# Weather App

## Overview
Weather App is a cross-platform application developed using Flutter. It provides weather information and forecasts to users on Windows, Android, and Linux platforms.

## Features
- Real-time weather data
- Location-based weather information
- Geocoding and reverse geocoding capabilities
- Cross-platform support (Windows, Android, Linux)

## Technical Details

### Windows
- Uses Win32 API for native window management
- Implements custom window class (Win32Window) for Flutter integration
- Supports DPI scaling and theme changes

### Android
- Utilizes Gradle for build management
- Integrates geocoding and geolocator plugins

### Linux
- Uses GTK for window management
- Implements custom GApplication subclass for Flutter integration

## Dependencies
- Flutter
- Dart
- Geocoding plugin
- Geolocator plugin

## Building and Running

### Windows
Run the following command in the project directory:
`flutter run -d windows`

### Android
Ensure you have the Android SDK installed and an emulator or device connected, then run:
`flutter run -d android`


### Linux
Make sure you have the necessary GTK dependencies installed, then run:
`flutter run -d linux`

## Contributing
Contributions to the Weather App are welcome. Please ensure you follow the existing code style and structure when submitting pull requests.