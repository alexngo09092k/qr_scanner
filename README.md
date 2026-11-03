# QRick

Fast QR & Barcode Scanner. Scan and create QR codes instantly.

## Features
- Scan QR codes and barcodes
- Generate QR codes for text, URL, Wi-Fi, contact, event, and more
- History of scanned and generated codes
- Multi-language support: English, Vietnamese, Thai, Chinese
- Dark / Light theme
- Premium (remove ads)

## Localization
ARB files are located in `lib/l10n/`:
- `intl_en.arb` - English
- `intl_vi.arb` - Vietnamese
- `intl_th.arb` - Thai
- `intl_zh.arb` - Chinese (Simplified)

After changing ARB files, regenerate with:
```bash
flutter pub get
flutter pub run intl_utils:generate
# or if using flutter_intl:
# flutter packages pub run intl_utils:generate
```

## Package ID
- Android / iOS: `com.snapeditify.scanner` (unchanged)

## App Display Name
- QRick
