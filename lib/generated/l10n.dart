// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get appName {
    return Intl.message(
      "QRick",
      name: 'appName',
      desc: '',
      args: [],
    );
  }
  String get appBio {
    return Intl.message(
      "Fast QR & Barcode Scanner. Scan and create QR codes instantly!",
      name: 'appBio',
      desc: '',
      args: [],
    );
  }
  String get scan {
    return Intl.message(
      "Scan",
      name: 'scan',
      desc: '',
      args: [],
    );
  }
  String get generate {
    return Intl.message(
      "Generate",
      name: 'generate',
      desc: '',
      args: [],
    );
  }
  String get history {
    return Intl.message(
      "History",
      name: 'history',
      desc: '',
      args: [],
    );
  }
  String get settings {
    return Intl.message(
      "Settings",
      name: 'settings',
      desc: '',
      args: [],
    );
  }
  String get copy {
    return Intl.message(
      "Copy",
      name: 'copy',
      desc: '',
      args: [],
    );
  }
  String get share {
    return Intl.message(
      "Share",
      name: 'share',
      desc: '',
      args: [],
    );
  }
  String get delete {
    return Intl.message(
      "Delete",
      name: 'delete',
      desc: '',
      args: [],
    );
  }
  String get cancel {
    return Intl.message(
      "Cancel",
      name: 'cancel',
      desc: '',
      args: [],
    );
  }
  String get ok {
    return Intl.message(
      "OK",
      name: 'ok',
      desc: '',
      args: [],
    );
  }
  String get clear {
    return Intl.message(
      "Clear",
      name: 'clear',
      desc: '',
      args: [],
    );
  }
  String get copiedToClipboard {
    return Intl.message(
      "Copied to clipboard",
      name: 'copiedToClipboard',
      desc: '',
      args: [],
    );
  }
  String get open {
    return Intl.message(
      "Open",
      name: 'open',
      desc: '',
      args: [],
    );
  }
  String get openFailed {
    return Intl.message(
      "Open failed",
      name: 'openFailed',
      desc: '',
      args: [],
    );
  }
  String get cannotOpenContent {
    return Intl.message(
      "Cannot open this content. Please try copy instead.",
      name: 'cannotOpenContent',
      desc: '',
      args: [],
    );
  }
  String get deleteQR {
    return Intl.message(
      "Delete QR?",
      name: 'deleteQR',
      desc: '',
      args: [],
    );
  }
  String get deleteQRMessage {
    return Intl.message(
      "This QR will be removed from history.",
      name: 'deleteQRMessage',
      desc: '',
      args: [],
    );
  }
  String get clearHistory {
    return Intl.message(
      "Clear history?",
      name: 'clearHistory',
      desc: '',
      args: [],
    );
  }
  String get clearHistoryMessage {
    return Intl.message(
      "All scan and generate history will be removed.",
      name: 'clearHistoryMessage',
      desc: '',
      args: [],
    );
  }
  String get historyCleared {
    return Intl.message(
      "History cleared",
      name: 'historyCleared',
      desc: '',
      args: [],
    );
  }
  String get historyEmpty {
    return Intl.message(
      "History is already empty",
      name: 'historyEmpty',
      desc: '',
      args: [],
    );
  }
  String get noHistory {
    return Intl.message(
      "No history yet",
      name: 'noHistory',
      desc: '',
      args: [],
    );
  }
  String get scanToStart {
    return Intl.message(
      "Scan a QR code or generate one to get started",
      name: 'scanToStart',
      desc: '',
      args: [],
    );
  }
  String get gallery {
    return Intl.message(
      "Gallery",
      name: 'gallery',
      desc: '',
      args: [],
    );
  }
  String get flash {
    return Intl.message(
      "Flash",
      name: 'flash',
      desc: '',
      args: [],
    );
  }
  String get flip {
    return Intl.message(
      "Flip",
      name: 'flip',
      desc: '',
      args: [],
    );
  }
  String get permissionDenied {
    return Intl.message(
      "Permission denied",
      name: 'permissionDenied',
      desc: '',
      args: [],
    );
  }
  String get cameraPermission {
    return Intl.message(
      "Camera permission is required to scan QR codes",
      name: 'cameraPermission',
      desc: '',
      args: [],
    );
  }
  String get goPremium {
    return Intl.message(
      "Go Premium",
      name: 'goPremium',
      desc: '',
      args: [],
    );
  }
  String get removeAds {
    return Intl.message(
      "Remove Ads",
      name: 'removeAds',
      desc: '',
      args: [],
    );
  }
  String get youArePremium {
    return Intl.message(
      "You are Premium",
      name: 'youArePremium',
      desc: '',
      args: [],
    );
  }
  String get enjoyUnlimited {
    return Intl.message(
      "Enjoy unlimited scanning without ads",
      name: 'enjoyUnlimited',
      desc: '',
      args: [],
    );
  }
  String get unlockAdFree {
    return Intl.message(
      "Unlock a clean, ad-free scanning experience",
      name: 'unlockAdFree',
      desc: '',
      args: [],
    );
  }
  String get noMoreAds {
    return Intl.message(
      "No more ads",
      name: 'noMoreAds',
      desc: '',
      args: [],
    );
  }
  String get noMoreAdsSubtitle {
    return Intl.message(
      "Scan and generate without interruptions",
      name: 'noMoreAdsSubtitle',
      desc: '',
      args: [],
    );
  }
  String get fasterExperience {
    return Intl.message(
      "Faster experience",
      name: 'fasterExperience',
      desc: '',
      args: [],
    );
  }
  String get fasterExperienceSubtitle {
    return Intl.message(
      "Less loading, more productivity",
      name: 'fasterExperienceSubtitle',
      desc: '',
      args: [],
    );
  }
  String get supportDev {
    return Intl.message(
      "Support development",
      name: 'supportDev',
      desc: '',
      args: [],
    );
  }
  String get supportDevSubtitle {
    return Intl.message(
      "Help us keep improving the app",
      name: 'supportDevSubtitle',
      desc: '',
      args: [],
    );
  }
  String get premiumActive {
    return Intl.message(
      "Premium active",
      name: 'premiumActive',
      desc: '',
      args: [],
    );
  }
  String get premiumUnavailable {
    return Intl.message(
      "Premium unavailable",
      name: 'premiumUnavailable',
      desc: '',
      args: [],
    );
  }
  String get purchaseCompleted {
    return Intl.message(
      "Purchase completed. Thank you!",
      name: 'purchaseCompleted',
      desc: '',
      args: [],
    );
  }
  String get purchaseFailed {
    return Intl.message(
      "Purchase failed",
      name: 'purchaseFailed',
      desc: '',
      args: [],
    );
  }
  String get purchaseFailedMessage {
    return Intl.message(
      "Unable to complete purchase. Please try again.",
      name: 'purchaseFailedMessage',
      desc: '',
      args: [],
    );
  }
  String get paymentSecure {
    return Intl.message(
      "Payment is processed securely by the store. You can restore purchases from your store account.",
      name: 'paymentSecure',
      desc: '',
      args: [],
    );
  }
  String get restorePurchases {
    return Intl.message(
      "Restore purchases",
      name: 'restorePurchases',
      desc: '',
      args: [],
    );
  }
  String get sendEmail {
    return Intl.message(
      "Send Email",
      name: 'sendEmail',
      desc: '',
      args: [],
    );
  }
  String get call {
    return Intl.message(
      "Call",
      name: 'call',
      desc: '',
      args: [],
    );
  }
  String get sendSMS {
    return Intl.message(
      "Send SMS",
      name: 'sendSMS',
      desc: '',
      args: [],
    );
  }
  String get openMaps {
    return Intl.message(
      "Open Maps",
      name: 'openMaps',
      desc: '',
      args: [],
    );
  }
  String get wifiInfo {
    return Intl.message(
      "Wi-Fi Info",
      name: 'wifiInfo',
      desc: '',
      args: [],
    );
  }
  String get rateApp {
    return Intl.message(
      "Rate QRick",
      name: 'rateApp',
      desc: '',
      args: [],
    );
  }
  String get feedback {
    return Intl.message(
      "Feedback",
      name: 'feedback',
      desc: '',
      args: [],
    );
  }
  String get learnMore {
    return Intl.message(
      "Learn more",
      name: 'learnMore',
      desc: '',
      args: [],
    );
  }
  String get maintenance {
    return Intl.message(
      "Maintenance",
      name: 'maintenance',
      desc: '',
      args: [],
    );
  }
  String get maintenanceMessage {
    return Intl.message(
      "We are performing maintenance. Please check back soon.",
      name: 'maintenanceMessage',
      desc: '',
      args: [],
    );
  }
  String generateQRFor(Object type) {
    return Intl.message(
      "Generate QR for {type}",
      name: 'generateQRFor',
      desc: '',
      args: [type],
    );
  }
  String get yourText {
    return Intl.message(
      "Your text",
      name: 'yourText',
      desc: '',
      args: [],
    );
  }
  String get yourUrl {
    return Intl.message(
      "Your URL",
      name: 'yourUrl',
      desc: '',
      args: [],
    );
  }
  String get putLinkHere {
    return Intl.message(
      "Put your link here",
      name: 'putLinkHere',
      desc: '',
      args: [],
    );
  }
  String get phoneNumber {
    return Intl.message(
      "Phone number",
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }
  String get message {
    return Intl.message(
      "Message",
      name: 'message',
      desc: '',
      args: [],
    );
  }
  String get subject {
    return Intl.message(
      "Subject",
      name: 'subject',
      desc: '',
      args: [],
    );
  }
  String get networkName {
    return Intl.message(
      "Network SSID (Name)",
      name: 'networkName',
      desc: '',
      args: [],
    );
  }
  String get password {
    return Intl.message(
      "Password",
      name: 'password',
      desc: '',
      args: [],
    );
  }
  String get hidden {
    return Intl.message(
      "Hidden",
      name: 'hidden',
      desc: '',
      args: [],
    );
  }
  String get firstName {
    return Intl.message(
      "First name",
      name: 'firstName',
      desc: '',
      args: [],
    );
  }
  String get lastName {
    return Intl.message(
      "Last name",
      name: 'lastName',
      desc: '',
      args: [],
    );
  }
  String get company {
    return Intl.message(
      "Company",
      name: 'company',
      desc: '',
      args: [],
    );
  }
  String get job {
    return Intl.message(
      "Your Job",
      name: 'job',
      desc: '',
      args: [],
    );
  }
  String get email {
    return Intl.message(
      "E-mail",
      name: 'email',
      desc: '',
      args: [],
    );
  }
  String get website {
    return Intl.message(
      "Your website",
      name: 'website',
      desc: '',
      args: [],
    );
  }
  String get street {
    return Intl.message(
      "Street",
      name: 'street',
      desc: '',
      args: [],
    );
  }
  String get city {
    return Intl.message(
      "City",
      name: 'city',
      desc: '',
      args: [],
    );
  }
  String get state {
    return Intl.message(
      "State",
      name: 'state',
      desc: '',
      args: [],
    );
  }
  String get country {
    return Intl.message(
      "Country",
      name: 'country',
      desc: '',
      args: [],
    );
  }
  String get eventTitle {
    return Intl.message(
      "Event Title",
      name: 'eventTitle',
      desc: '',
      args: [],
    );
  }
  String get eventLocation {
    return Intl.message(
      "Event Location",
      name: 'eventLocation',
      desc: '',
      args: [],
    );
  }
  String get startTime {
    return Intl.message(
      "Start time",
      name: 'startTime',
      desc: '',
      args: [],
    );
  }
  String get endTime {
    return Intl.message(
      "End time",
      name: 'endTime',
      desc: '',
      args: [],
    );
  }
  String get download {
    return Intl.message(
      "Download",
      name: 'download',
      desc: '',
      args: [],
    );
  }
  String get scanned {
    return Intl.message(
      "Scanned",
      name: 'scanned',
      desc: '',
      args: [],
    );
  }
  String get generated {
    return Intl.message(
      "Generated",
      name: 'generated',
      desc: '',
      args: [],
    );
  }
  String get all {
    return Intl.message(
      "All",
      name: 'all',
      desc: '',
      args: [],
    );
  }
  String get search {
    return Intl.message(
      "Search",
      name: 'search',
      desc: '',
      args: [],
    );
  }
  String get noResults {
    return Intl.message(
      "No results found",
      name: 'noResults',
      desc: '',
      args: [],
    );
  }
  String get theme {
    return Intl.message(
      "Theme",
      name: 'theme',
      desc: '',
      args: [],
    );
  }
  String get language {
    return Intl.message(
      "Language",
      name: 'language',
      desc: '',
      args: [],
    );
  }
  String get darkMode {
    return Intl.message(
      "Dark",
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }
  String get lightMode {
    return Intl.message(
      "Light",
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }
  String get systemMode {
    return Intl.message(
      "System",
      name: 'systemMode',
      desc: '',
      args: [],
    );
  }
  String get about {
    return Intl.message(
      "About",
      name: 'about',
      desc: '',
      args: [],
    );
  }
  String get version {
    return Intl.message(
      "Version",
      name: 'version',
      desc: '',
      args: [],
    );
  }
  String get shareApp {
    return Intl.message(
      "Share app",
      name: 'shareApp',
      desc: '',
      args: [],
    );
  }
  String get privacyPolicy {
    return Intl.message(
      "Privacy policy",
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }
  String get termsOfService {
    return Intl.message(
      "Terms of service",
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }
  String get faq {
    return Intl.message(
      "FAQ",
      name: 'faq',
      desc: '',
      args: [],
    );
  }
  String get contactUs {
    return Intl.message(
      "Contact us",
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }
  String get openBrowser {
    return Intl.message(
      "Open browser",
      name: 'openBrowser',
      desc: '',
      args: [],
    );
  }
  String get failedOpenBrowser {
    return Intl.message(
      "Failed to open browser. Please try again!",
      name: 'failedOpenBrowser',
      desc: '',
      args: [],
    );
  }
  String get failedOpenMail {
    return Intl.message(
      "Failed to open mail. Please try again",
      name: 'failedOpenMail',
      desc: '',
      args: [],
    );
  }
  String get wifi {
    return Intl.message(
      "Wi-Fi",
      name: 'wifi',
      desc: '',
      args: [],
    );
  }
  String get text {
    return Intl.message(
      "Text",
      name: 'text',
      desc: '',
      args: [],
    );
  }
  String get url {
    return Intl.message(
      "URL",
      name: 'url',
      desc: '',
      args: [],
    );
  }
  String get emailType {
    return Intl.message(
      "Email",
      name: 'emailType',
      desc: '',
      args: [],
    );
  }
  String get sms {
    return Intl.message(
      "SMS",
      name: 'sms',
      desc: '',
      args: [],
    );
  }
  String get phone {
    return Intl.message(
      "Phone",
      name: 'phone',
      desc: '',
      args: [],
    );
  }
  String get contact {
    return Intl.message(
      "Contact",
      name: 'contact',
      desc: '',
      args: [],
    );
  }
  String get location {
    return Intl.message(
      "Location",
      name: 'location',
      desc: '',
      args: [],
    );
  }
  String get event {
    return Intl.message(
      "Event",
      name: 'event',
      desc: '',
      args: [],
    );
  }
  String get product {
    return Intl.message(
      "Product",
      name: 'product',
      desc: '',
      args: [],
    );
  }
  String get crypto {
    return Intl.message(
      "Crypto",
      name: 'crypto',
      desc: '',
      args: [],
    );
  }
  String get barcode {
    return Intl.message(
      "Barcode",
      name: 'barcode',
      desc: '',
      args: [],
    );
  }
  String get chooseLanguage {
    return Intl.message(
      "Choose language",
      name: 'chooseLanguage',
      desc: '',
      args: [],
    );
  }
  String get langEnglish {
    return Intl.message(
      "English",
      name: 'langEnglish',
      desc: '',
      args: [],
    );
  }
  String get langVietnamese {
    return Intl.message(
      "Tiếng Việt",
      name: 'langVietnamese',
      desc: '',
      args: [],
    );
  }
  String get langThai {
    return Intl.message(
      "ไทย",
      name: 'langThai',
      desc: '',
      args: [],
    );
  }
  String get langChinese {
    return Intl.message(
      "中文",
      name: 'langChinese',
      desc: '',
      args: [],
    );
  }
  String get send {
    return Intl.message(
      "Send",
      name: 'send',
      desc: '',
      args: [],
    );
  }
  String areYouHappy(Object app) {
    return Intl.message(
      "Are you happy with {app}?",
      name: 'areYouHappy',
      desc: '',
      args: [app],
    );
  }
  String get feedbackHelp {
    return Intl.message(
      "Your feedback helps us improve the app.",
      name: 'feedbackHelp',
      desc: '',
      args: [],
    );
  }
  String versionLabel(Object version) {
    return Intl.message(
      "Version {version}",
      name: 'versionLabel',
      desc: '',
      args: [version],
    );
  }
  String teamLabel(Object app) {
    return Intl.message(
      "{app} Team",
      name: 'teamLabel',
      desc: '',
      args: [app],
    );
  }
  String get typeText {
    return Intl.message(
      "Text",
      name: 'typeText',
      desc: '',
      args: [],
    );
  }
  String get typeUrl {
    return Intl.message(
      "URL",
      name: 'typeUrl',
      desc: '',
      args: [],
    );
  }
  String get typeEmail {
    return Intl.message(
      "Email",
      name: 'typeEmail',
      desc: '',
      args: [],
    );
  }
  String get typePhone {
    return Intl.message(
      "Phone",
      name: 'typePhone',
      desc: '',
      args: [],
    );
  }
  String get typeSms {
    return Intl.message(
      "SMS",
      name: 'typeSms',
      desc: '',
      args: [],
    );
  }
  String get typeWifi {
    return Intl.message(
      "Wi-Fi",
      name: 'typeWifi',
      desc: '',
      args: [],
    );
  }
  String get typeContact {
    return Intl.message(
      "Contact",
      name: 'typeContact',
      desc: '',
      args: [],
    );
  }
  String get typeLocation {
    return Intl.message(
      "Location",
      name: 'typeLocation',
      desc: '',
      args: [],
    );
  }
  String get typeEvent {
    return Intl.message(
      "Event",
      name: 'typeEvent',
      desc: '',
      args: [],
    );
  }
  String get typeProduct {
    return Intl.message(
      "Product",
      name: 'typeProduct',
      desc: '',
      args: [],
    );
  }
  String get typeCrypto {
    return Intl.message(
      "Crypto",
      name: 'typeCrypto',
      desc: '',
      args: [],
    );
  }
  String get typeMaps {
    return Intl.message(
      "Maps",
      name: 'typeMaps',
      desc: '',
      args: [],
    );
  }
  String get controllerNotReady {
    return Intl.message(
      "Controller not ready",
      name: 'controllerNotReady',
      desc: '',
      args: [],
    );
  }
  String get scanningUnsupported {
    return Intl.message(
      "Scanning is unsupported on this device",
      name: 'scanningUnsupported',
      desc: '',
      args: [],
    );
  }
  String get genericError {
    return Intl.message(
      "Something went wrong",
      name: 'genericError',
      desc: '',
      args: [],
    );
  }
  String get hintYourText {
    return Intl.message(
      "Your text",
      name: 'hintYourText',
      desc: '',
      args: [],
    );
  }
  String get hintYourUrl {
    return Intl.message(
      "Your URL",
      name: 'hintYourUrl',
      desc: '',
      args: [],
    );
  }
  String get hintPutLink {
    return Intl.message(
      "Paste your link here",
      name: 'hintPutLink',
      desc: '',
      args: [],
    );
  }
  String get hintPhone {
    return Intl.message(
      "Phone number",
      name: 'hintPhone',
      desc: '',
      args: [],
    );
  }
  String get hintMessage {
    return Intl.message(
      "Message",
      name: 'hintMessage',
      desc: '',
      args: [],
    );
  }
  String get hintSubject {
    return Intl.message(
      "Subject",
      name: 'hintSubject',
      desc: '',
      args: [],
    );
  }
  String get hintNetwork {
    return Intl.message(
      "Network name (SSID)",
      name: 'hintNetwork',
      desc: '',
      args: [],
    );
  }
  String get hintPassword {
    return Intl.message(
      "Password",
      name: 'hintPassword',
      desc: '',
      args: [],
    );
  }
  String get hintFirstName {
    return Intl.message(
      "First name",
      name: 'hintFirstName',
      desc: '',
      args: [],
    );
  }
  String get hintLastName {
    return Intl.message(
      "Last name",
      name: 'hintLastName',
      desc: '',
      args: [],
    );
  }
  String get hintCompany {
    return Intl.message(
      "Company",
      name: 'hintCompany',
      desc: '',
      args: [],
    );
  }
  String get hintJob {
    return Intl.message(
      "Job title",
      name: 'hintJob',
      desc: '',
      args: [],
    );
  }
  String get hintEmail {
    return Intl.message(
      "Email",
      name: 'hintEmail',
      desc: '',
      args: [],
    );
  }
  String get hintWebsite {
    return Intl.message(
      "Website",
      name: 'hintWebsite',
      desc: '',
      args: [],
    );
  }
  String get hintStreet {
    return Intl.message(
      "Street",
      name: 'hintStreet',
      desc: '',
      args: [],
    );
  }
  String get hintCity {
    return Intl.message(
      "City",
      name: 'hintCity',
      desc: '',
      args: [],
    );
  }
  String get hintState {
    return Intl.message(
      "State / Province",
      name: 'hintState',
      desc: '',
      args: [],
    );
  }
  String get hintCountry {
    return Intl.message(
      "Country",
      name: 'hintCountry',
      desc: '',
      args: [],
    );
  }
  String get hintEventTitle {
    return Intl.message(
      "Event title",
      name: 'hintEventTitle',
      desc: '',
      args: [],
    );
  }
  String get hintEventLocation {
    return Intl.message(
      "Event location",
      name: 'hintEventLocation',
      desc: '',
      args: [],
    );
  }
  String get hintStartTime {
    return Intl.message(
      "Start time",
      name: 'hintStartTime',
      desc: '',
      args: [],
    );
  }
  String get hintEndTime {
    return Intl.message(
      "End time",
      name: 'hintEndTime',
      desc: '',
      args: [],
    );
  }
  String get hintUsername {
    return Intl.message(
      "@username",
      name: 'hintUsername',
      desc: '',
      args: [],
    );
  }
  String get hintCompose {
    return Intl.message(
      "Write a message",
      name: 'hintCompose',
      desc: '',
      args: [],
    );
  }
  String get hintLatitude {
    return Intl.message(
      "Latitude",
      name: 'hintLatitude',
      desc: '',
      args: [],
    );
  }
  String get hintLongitude {
    return Intl.message(
      "Longitude",
      name: 'hintLongitude',
      desc: '',
      args: [],
    );
  }
  String get hintProduct {
    return Intl.message(
      "Describe your product",
      name: 'hintProduct',
      desc: '',
      args: [],
    );
  }
  String get hintAmount {
    return Intl.message(
      "Amount",
      name: 'hintAmount',
      desc: '',
      args: [],
    );
  }
  String get hintReceiver {
    return Intl.message(
      "Receiver address",
      name: 'hintReceiver',
      desc: '',
      args: [],
    );
  }
  String get hintVideoId {
    return Intl.message(
      "Video ID or URL",
      name: 'hintVideoId',
      desc: '',
      args: [],
    );
  }
  String get hiddenNetwork {
    return Intl.message(
      "Hidden network",
      name: 'hiddenNetwork',
      desc: '',
      args: [],
    );
  }
  String get done {
    return Intl.message(
      "Done",
      name: 'done',
      desc: '',
      args: [],
    );
  }
  String get save {
    return Intl.message(
      "Save",
      name: 'save',
      desc: '',
      args: [],
    );
  }
  String get close {
    return Intl.message(
      "Close",
      name: 'close',
      desc: '',
      args: [],
    );
  }
  String get retry {
    return Intl.message(
      "Retry",
      name: 'retry',
      desc: '',
      args: [],
    );
  }
  String get settingsTitle {
    return Intl.message(
      "Settings",
      name: 'settingsTitle',
      desc: '',
      args: [],
    );
  }
  String get appearance {
    return Intl.message(
      "Appearance",
      name: 'appearance',
      desc: '',
      args: [],
    );
  }
  String get general {
    return Intl.message(
      "General",
      name: 'general',
      desc: '',
      args: [],
    );
  }
  String get support {
    return Intl.message(
      "Support",
      name: 'support',
      desc: '',
      args: [],
    );
  }
  String get currentLanguage {
    return Intl.message(
      "Current",
      name: 'currentLanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
