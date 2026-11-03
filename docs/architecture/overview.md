# Architecture Overview

## Pattern
Feature-first + Provider (ChangeNotifier).

## Layers
- **features/** — UI screens theo domain (scan, generate, history, result, settings, home)
- **shared/** — models, providers, widgets dùng chung
- **core/** — theme, constants, services

## State
- `SettingsProvider` — theme, vibrate
- `HistoryProvider` — list QR items, persist SharedPreferences

## Navigation
- Bottom nav `HomeShell` (IndexedStack)
- Push `ResultPage` / `GenerateFormPage` từ Scan / Generate / History

## Data
- `QrItem` — id, rawValue, type, source, createdAt, isFavorite, metadata
- Type detection heuristic từ raw string
