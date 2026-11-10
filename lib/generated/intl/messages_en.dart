// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(app) => "Are you happy with ${app}?";

  static String m1(type) => "Generate QR for ${type}";

  static String m2(app) => "${app} Team";

  static String m3(version) => "Version ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("About"),
        "all": MessageLookupByLibrary.simpleMessage("All"),
        "appBio": MessageLookupByLibrary.simpleMessage(
            "Fast QR & Barcode Scanner. Scan and create QR codes instantly!"),
        "appName": MessageLookupByLibrary.simpleMessage("QRick"),
        "appearance": MessageLookupByLibrary.simpleMessage("Appearance"),
        "areYouHappy": m0,
        "barcode": MessageLookupByLibrary.simpleMessage("Barcode"),
        "call": MessageLookupByLibrary.simpleMessage("Call"),
        "cameraPermission": MessageLookupByLibrary.simpleMessage(
            "Camera permission is required to scan QR codes"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cannotOpenContent": MessageLookupByLibrary.simpleMessage(
            "Cannot open this content. Please try copy instead."),
        "chooseLanguage":
            MessageLookupByLibrary.simpleMessage("Choose language"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "clear": MessageLookupByLibrary.simpleMessage("Clear"),
        "clearHistory": MessageLookupByLibrary.simpleMessage("Clear history?"),
        "clearHistoryMessage": MessageLookupByLibrary.simpleMessage(
            "All scan and generate history will be removed."),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "company": MessageLookupByLibrary.simpleMessage("Company"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "contactUs": MessageLookupByLibrary.simpleMessage("Contact us"),
        "controllerNotReady":
            MessageLookupByLibrary.simpleMessage("Controller not ready"),
        "copiedToClipboard":
            MessageLookupByLibrary.simpleMessage("Copied to clipboard"),
        "copy": MessageLookupByLibrary.simpleMessage("Copy"),
        "country": MessageLookupByLibrary.simpleMessage("Country"),
        "crypto": MessageLookupByLibrary.simpleMessage("Crypto"),
        "currentLanguage": MessageLookupByLibrary.simpleMessage("Current"),
        "darkMode": MessageLookupByLibrary.simpleMessage("Dark"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteQR": MessageLookupByLibrary.simpleMessage("Delete QR?"),
        "deleteQRMessage": MessageLookupByLibrary.simpleMessage(
            "This QR will be removed from history."),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "download": MessageLookupByLibrary.simpleMessage("Download"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "emailType": MessageLookupByLibrary.simpleMessage("Email"),
        "endTime": MessageLookupByLibrary.simpleMessage("End time"),
        "enjoyUnlimited": MessageLookupByLibrary.simpleMessage(
            "Enjoy unlimited scanning without ads"),
        "event": MessageLookupByLibrary.simpleMessage("Event"),
        "eventLocation": MessageLookupByLibrary.simpleMessage("Event Location"),
        "eventTitle": MessageLookupByLibrary.simpleMessage("Event Title"),
        "failedOpenBrowser": MessageLookupByLibrary.simpleMessage(
            "Failed to open browser. Please try again!"),
        "failedOpenMail": MessageLookupByLibrary.simpleMessage(
            "Failed to open mail. Please try again"),
        "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
        "fasterExperience":
            MessageLookupByLibrary.simpleMessage("Faster experience"),
        "fasterExperienceSubtitle": MessageLookupByLibrary.simpleMessage(
            "Less loading, more productivity"),
        "feedback": MessageLookupByLibrary.simpleMessage("Feedback"),
        "feedbackHelp": MessageLookupByLibrary.simpleMessage(
            "Your feedback helps us improve the app."),
        "firstName": MessageLookupByLibrary.simpleMessage("First name"),
        "flash": MessageLookupByLibrary.simpleMessage("Flash"),
        "flip": MessageLookupByLibrary.simpleMessage("Flip"),
        "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "generate": MessageLookupByLibrary.simpleMessage("Generate"),
        "generateQRFor": m1,
        "generated": MessageLookupByLibrary.simpleMessage("Generated"),
        "genericError":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "goPremium": MessageLookupByLibrary.simpleMessage("Go Premium"),
        "hidden": MessageLookupByLibrary.simpleMessage("Hidden"),
        "hiddenNetwork": MessageLookupByLibrary.simpleMessage("Hidden network"),
        "hintAmount": MessageLookupByLibrary.simpleMessage("Amount"),
        "hintCity": MessageLookupByLibrary.simpleMessage("City"),
        "hintCompany": MessageLookupByLibrary.simpleMessage("Company"),
        "hintCompose": MessageLookupByLibrary.simpleMessage("Write a message"),
        "hintCountry": MessageLookupByLibrary.simpleMessage("Country"),
        "hintEmail": MessageLookupByLibrary.simpleMessage("Email"),
        "hintEndTime": MessageLookupByLibrary.simpleMessage("End time"),
        "hintEventLocation":
            MessageLookupByLibrary.simpleMessage("Event location"),
        "hintEventTitle": MessageLookupByLibrary.simpleMessage("Event title"),
        "hintFirstName": MessageLookupByLibrary.simpleMessage("First name"),
        "hintJob": MessageLookupByLibrary.simpleMessage("Job title"),
        "hintLastName": MessageLookupByLibrary.simpleMessage("Last name"),
        "hintLatitude": MessageLookupByLibrary.simpleMessage("Latitude"),
        "hintLongitude": MessageLookupByLibrary.simpleMessage("Longitude"),
        "hintMessage": MessageLookupByLibrary.simpleMessage("Message"),
        "hintNetwork":
            MessageLookupByLibrary.simpleMessage("Network name (SSID)"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "hintPhone": MessageLookupByLibrary.simpleMessage("Phone number"),
        "hintProduct":
            MessageLookupByLibrary.simpleMessage("Describe your product"),
        "hintPutLink":
            MessageLookupByLibrary.simpleMessage("Paste your link here"),
        "hintReceiver":
            MessageLookupByLibrary.simpleMessage("Receiver address"),
        "hintStartTime": MessageLookupByLibrary.simpleMessage("Start time"),
        "hintState": MessageLookupByLibrary.simpleMessage("State / Province"),
        "hintStreet": MessageLookupByLibrary.simpleMessage("Street"),
        "hintSubject": MessageLookupByLibrary.simpleMessage("Subject"),
        "hintUsername": MessageLookupByLibrary.simpleMessage("@username"),
        "hintVideoId": MessageLookupByLibrary.simpleMessage("Video ID or URL"),
        "hintWebsite": MessageLookupByLibrary.simpleMessage("Website"),
        "hintYourText": MessageLookupByLibrary.simpleMessage("Your text"),
        "hintYourUrl": MessageLookupByLibrary.simpleMessage("Your URL"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "historyCleared":
            MessageLookupByLibrary.simpleMessage("History cleared"),
        "historyEmpty":
            MessageLookupByLibrary.simpleMessage("History is already empty"),
        "job": MessageLookupByLibrary.simpleMessage("Your Job"),
        "langChinese": MessageLookupByLibrary.simpleMessage("中文"),
        "langEnglish": MessageLookupByLibrary.simpleMessage("English"),
        "langThai": MessageLookupByLibrary.simpleMessage("ไทย"),
        "langVietnamese": MessageLookupByLibrary.simpleMessage("Tiếng Việt"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last name"),
        "learnMore": MessageLookupByLibrary.simpleMessage("Learn more"),
        "lightMode": MessageLookupByLibrary.simpleMessage("Light"),
        "location": MessageLookupByLibrary.simpleMessage("Location"),
        "maintenance": MessageLookupByLibrary.simpleMessage("Maintenance"),
        "maintenanceMessage": MessageLookupByLibrary.simpleMessage(
            "We are performing maintenance. Please check back soon."),
        "message": MessageLookupByLibrary.simpleMessage("Message"),
        "networkName":
            MessageLookupByLibrary.simpleMessage("Network SSID (Name)"),
        "noHistory": MessageLookupByLibrary.simpleMessage("No history yet"),
        "noMoreAds": MessageLookupByLibrary.simpleMessage("No more ads"),
        "noMoreAdsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Scan and generate without interruptions"),
        "noResults": MessageLookupByLibrary.simpleMessage("No results found"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "openBrowser": MessageLookupByLibrary.simpleMessage("Open browser"),
        "openFailed": MessageLookupByLibrary.simpleMessage("Open failed"),
        "openMaps": MessageLookupByLibrary.simpleMessage("Open Maps"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "paymentSecure": MessageLookupByLibrary.simpleMessage(
            "Payment is processed securely by the store. You can restore purchases from your store account."),
        "permissionDenied":
            MessageLookupByLibrary.simpleMessage("Permission denied"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone number"),
        "premiumActive": MessageLookupByLibrary.simpleMessage("Premium active"),
        "premiumUnavailable":
            MessageLookupByLibrary.simpleMessage("Premium unavailable"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy policy"),
        "product": MessageLookupByLibrary.simpleMessage("Product"),
        "purchaseCompleted": MessageLookupByLibrary.simpleMessage(
            "Purchase completed. Thank you!"),
        "purchaseFailed":
            MessageLookupByLibrary.simpleMessage("Purchase failed"),
        "purchaseFailedMessage": MessageLookupByLibrary.simpleMessage(
            "Unable to complete purchase. Please try again."),
        "putLinkHere":
            MessageLookupByLibrary.simpleMessage("Put your link here"),
        "rateApp": MessageLookupByLibrary.simpleMessage("Rate QRick"),
        "removeAds": MessageLookupByLibrary.simpleMessage("Remove Ads"),
        "restorePurchases":
            MessageLookupByLibrary.simpleMessage("Restore purchases"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "scan": MessageLookupByLibrary.simpleMessage("Scan"),
        "scanToStart": MessageLookupByLibrary.simpleMessage(
            "Scan a QR code or generate one to get started"),
        "scanned": MessageLookupByLibrary.simpleMessage("Scanned"),
        "scanningUnsupported": MessageLookupByLibrary.simpleMessage(
            "Scanning is unsupported on this device"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendEmail": MessageLookupByLibrary.simpleMessage("Send Email"),
        "sendSMS": MessageLookupByLibrary.simpleMessage("Send SMS"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Settings"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "shareApp": MessageLookupByLibrary.simpleMessage("Share app"),
        "sms": MessageLookupByLibrary.simpleMessage("SMS"),
        "startTime": MessageLookupByLibrary.simpleMessage("Start time"),
        "state": MessageLookupByLibrary.simpleMessage("State"),
        "street": MessageLookupByLibrary.simpleMessage("Street"),
        "subject": MessageLookupByLibrary.simpleMessage("Subject"),
        "support": MessageLookupByLibrary.simpleMessage("Support"),
        "supportDev":
            MessageLookupByLibrary.simpleMessage("Support development"),
        "supportDevSubtitle": MessageLookupByLibrary.simpleMessage(
            "Help us keep improving the app"),
        "systemMode": MessageLookupByLibrary.simpleMessage("System"),
        "teamLabel": m2,
        "termsOfService":
            MessageLookupByLibrary.simpleMessage("Terms of service"),
        "text": MessageLookupByLibrary.simpleMessage("Text"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "typeContact": MessageLookupByLibrary.simpleMessage("Contact"),
        "typeCrypto": MessageLookupByLibrary.simpleMessage("Crypto"),
        "typeEmail": MessageLookupByLibrary.simpleMessage("Email"),
        "typeEvent": MessageLookupByLibrary.simpleMessage("Event"),
        "typeLocation": MessageLookupByLibrary.simpleMessage("Location"),
        "typeMaps": MessageLookupByLibrary.simpleMessage("Maps"),
        "typePhone": MessageLookupByLibrary.simpleMessage("Phone"),
        "typeProduct": MessageLookupByLibrary.simpleMessage("Product"),
        "typeSms": MessageLookupByLibrary.simpleMessage("SMS"),
        "typeText": MessageLookupByLibrary.simpleMessage("Text"),
        "typeUrl": MessageLookupByLibrary.simpleMessage("URL"),
        "typeWifi": MessageLookupByLibrary.simpleMessage("Wi-Fi"),
        "unlockAdFree": MessageLookupByLibrary.simpleMessage(
            "Unlock a clean, ad-free scanning experience"),
        "url": MessageLookupByLibrary.simpleMessage("URL"),
        "version": MessageLookupByLibrary.simpleMessage("Version"),
        "versionLabel": m3,
        "website": MessageLookupByLibrary.simpleMessage("Your website"),
        "wifi": MessageLookupByLibrary.simpleMessage("Wi-Fi"),
        "wifiInfo": MessageLookupByLibrary.simpleMessage("Wi-Fi Info"),
        "youArePremium":
            MessageLookupByLibrary.simpleMessage("You are Premium"),
        "yourText": MessageLookupByLibrary.simpleMessage("Your text"),
        "yourUrl": MessageLookupByLibrary.simpleMessage("Your URL")
      };
}
