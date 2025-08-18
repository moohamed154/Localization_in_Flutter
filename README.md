# Flutter Localization Demo

A Flutter application demonstrating language localization with support for English, Arabic, and System language preferences.

## Features

- Dynamic language switching between English and Arabic
- System language detection and application
- Persistent language preferences using SharedPreferences
- Clean architecture with BLoC pattern
- Responsive UI design

## Architecture

The project follows a clean architecture approach with:

- **Cache Layer**: Handles local storage using SharedPreferences
- **BLoC Pattern**: Manages state and business logic
- **UI Layer**: Responsive screens and widgets

## Getting Started

1. Clone the repository
2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Dependencies

- **flutter_bloc**: State management
- **shared_preferences**: Local storage
- **intl**: Internationalization support
