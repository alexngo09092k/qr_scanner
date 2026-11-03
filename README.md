# QR Scanner

Flutter QR Code Scanner & Generator.

## Dependencies

Private packages remain **git** dependencies (do not convert to path):

- `fluttering` → git@github.com:brennan992k/fluttering.git
- `fluttering_ads`
- `fluttering_iap`
- `fluttering_remote_config`
- `fluttering_analytics`

You need SSH access to those repos (or replace URLs with your access method).

```bash
flutter pub get
flutter run
```

## Completed features (this delivery)

| Area | What was finished |
|------|-------------------|
| **MaintenancePage** | Full UI from remote/business config (title, message, link) |
| **PremiumPage** | Remove-ads purchase UI + AwesomeIAP |
| **ViewerPage** | Open / Call / Email / SMS / Maps, Copy, Share, Delete |
| **ScannerResult** | Thumbnail badge after scan, tap → viewer |
| **ScannerOverlay** | Dim overlay with scan-window cutout |
| **Scanner flow** | After camera/gallery detect → vibrate + history + navigate Viewer |
| **History** | Delete item (tap icon / long-press), Clear all |
| **Settings** | Go Premium entry |
| **AppRoutes** | premium route in onGenerateRoute |

## Existing features (already in source)

- Live scan (mobile_scanner), gallery, flashlight, camera switch, zoom
- Generate 20+ QR types with forms
- History scan/generate + local storage
- Splash → home / maintenance by appMode
- Ads / IAP / Analytics / Remote Config via fluttering_* packages
