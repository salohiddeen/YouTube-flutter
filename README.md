# Pulse

Pulse is a Flutter video platform built around discovery, creator channels, and lightweight social interaction. It combines a familiar feed experience with focused upload flows for long-form and short-form video.

## Highlights

- Firebase Authentication with Google sign-in
- Firestore-backed profiles, channels, subscriptions, videos, and comments
- Long-form playback and a vertical short-video feed
- Video upload, trimming, metadata, and Firebase Storage persistence
- Search across videos and channels
- Profile settings and channel management
- Riverpod state management and cached network imagery
- Material 3 visual system with responsive Flutter UI

## Architecture

The app is organized by feature. Shared UI primitives live in `lib/cores`, while authentication, channels, content, search, and upload workflows are isolated under `lib/features`. Firebase initialization lives in `lib/firebase_options.dart`, and providers own asynchronous application state.

## Run locally

### Requirements

- Flutter 3.x with Dart 3.0.6 or newer
- A Firebase project configured for the target platforms
- Google sign-in enabled in Firebase Authentication

```bash
flutter pub get
flutter run
```

Regenerate platform configuration with FlutterFire CLI for a new Firebase project and verify each application identifier. Video processing also depends on the platform support provided by `ffmpeg_kit_flutter`.

## Quality checks

```bash
flutter analyze
flutter test
```

## Project structure

```text
lib/
	cores/       shared colors, widgets, screens, and helpers
	features/    auth, account, channels, content, search, and upload
	home_page.dart
	main.dart
```
