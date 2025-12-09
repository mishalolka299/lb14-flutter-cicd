# LB1 Flutter App

![CI Status](https://github.com/username/repo/workflows/Flutter%20CI/badge.svg)
![Coverage](https://img.shields.io/codecov/c/github/username/repo)

A professional Flutter weather application with advanced networking features and CI/CD pipeline.

## Environments

- Dev: `flutter run --dart-define=BUILD_ENV=dev --dart-define=API_URL=https://api-dev.example.com`
- Staging: `flutter run --dart-define=BUILD_ENV=staging --dart-define=API_URL=https://api-staging.example.com`
- Prod: `flutter run --dart-define=BUILD_ENV=prod --dart-define=API_URL=https://api.example.com`

## Flavors

- Dev Flavor: `flutter run --flavor dev --target lib/main_dev.dart`
- Prod Flavor: `flutter run --flavor prod --target lib/main_prod.dart`

## CI/CD Pipeline

- All PRs must pass CI checks (analyze, format, test)
- Minimum 70% code coverage required
- Automated builds for different environments
- Branch protection rules enforced

## Setup

## Setup

### 1. Get OpenWeatherMap API Key

1. Go to [OpenWeatherMap](https://openweathermap.org/api)
2. Sign up for a free account
3. Go to your API keys section
4. Copy your API key

### 2. Configure API Key

1. Open `lib/network/dio_client.dart`
2. Replace `YOUR_OPENWEATHERMAP_API_KEY_HERE` with your actual API key:

```dart
static const String apiKey = 'your_actual_api_key_here';
```

### 3. Run the App

```bash
flutter pub get
flutter run
```

## Features

- 🌤️ Current weather display
- 📅 5-day weather forecast
- 🗺️ City search functionality
- ⭐ Favorite cities management
- 🔄 Pull-to-refresh
- 📶 Offline-first architecture with caching
- 🔧 Professional error handling

## Architecture

The app follows Clean Architecture principles with:

- **Network Layer**: Dio with custom interceptors for logging and API key handling
- **Data Layer**: Repository pattern with remote and local data sources
- **Domain Layer**: Business logic entities and repository interfaces
- **Presentation Layer**: Flutter UI with Riverpod state management

## Setup

1. Get an API key from [OpenWeatherMap](https://openweathermap.org/api)
2. Replace `YOUR_OPENWEATHERMAP_API_KEY` in `lib/network/dio_client.dart`
3. Run `flutter pub get`
4. Run `flutter run`

## Testing

Run unit tests:
```bash
flutter test
```

## Design

The app features a modern, clean design with:

- Material 3 components
- Responsive layout
- Intuitive navigation
- Beautiful weather icons and gradients
- Smooth animations and transitions

## Screenshots

[Add screenshots here]

## Technologies Used

- Flutter
- Dio (HTTP client)
- Riverpod (State management)
- SharedPreferences (Local storage)
- JSON Serializable (Data serialization)
- Connectivity Plus (Network status)
