# Flutter Localization Demo

A Flutter application demonstrating language localization with support for English, Arabic, and System language preferences.

## Features

- Dynamic language switching between English and Arabic
- System language detection and application
- Persistent language preferences using SharedPreferences
- Clean architecture with BLoC pattern
- Responsive UI design
- RTL (Right-to-Left) support for Arabic language
- Automatic language detection based on device settings

## Architecture

The project follows a clean architecture approach with:

- **Cache Layer**: Handles local storage using SharedPreferences
- **BLoC Pattern**: Manages state and business logic using flutter_bloc
- **UI Layer**: Responsive screens and widgets
- **Localization Layer**: ARB files for internationalization

## Project Structure

```
lib/
├── app/
│   └── logic/
│       └── cubit/          # BLoC state management
├── cache/                  # Local storage utilities
├── generated/              # Auto-generated localization files
├── l10n/                   # ARB localization files
├── screen/                 # UI screens
└── main.dart              # App entry point
```

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code
- Android SDK / Xcode (for mobile development)

### Installation

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd localization
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Generate localization files:

   ```bash
   flutter gen-l10n
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Usage

### Language Switching

The app provides three language options:

- **English**: Left-to-Right (LTR) layout
- **Arabic**: Right-to-Left (RTL) layout
- **System**: Automatically follows device language settings

### State Management

The app uses BLoC pattern for state management:

- `AppCubit`: Manages language selection and app state
- `AppState`: Represents different app states

### Localization

Localization is handled through ARB files:

- `intl_en.arb`: English translations
- `intl_ar.arb`: Arabic translations

## Dependencies

### Core Dependencies

- **flutter_bloc**: State management using BLoC pattern
- **shared_preferences**: Local storage for persistent settings
- **intl**: Internationalization and localization support

### Development Dependencies

- **flutter_localizations**: Flutter localization support
- **flutter_gen**: Code generation for assets and localization

## Configuration

### Android Configuration

The app is configured to support multiple languages in `android/app/src/main/res/`.

### iOS Configuration

Localization support is configured in the iOS project settings.

## Building for Production

### Android APK

```bash
flutter build apk --release
```

### iOS IPA

```bash
flutter build ios --release
```

### Web

```bash
flutter build web
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## Troubleshooting

### Common Issues

1. **Localization not working**: Ensure `flutter gen-l10n` has been run
2. **Build errors**: Check Flutter and Dart SDK versions
3. **Language not persisting**: Verify SharedPreferences permissions

### Debug Mode

Run the app in debug mode to see detailed logs:

```bash
flutter run --debug
```

## License

This project is open source and available under the [MIT License](LICENSE).

## Acknowledgments

- Flutter team for the excellent localization framework
- BLoC pattern contributors
- Flutter community for best practices and examples
