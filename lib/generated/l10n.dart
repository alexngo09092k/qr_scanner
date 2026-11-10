// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

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

  /// `QRick`
  String get appName {
    return Intl.message(
      'QRick',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Fast QR & Barcode Scanner. Scan and create QR codes instantly!`
  String get appBio {
    return Intl.message(
      'Fast QR & Barcode Scanner. Scan and create QR codes instantly!',
      name: 'appBio',
      desc: '',
      args: [],
    );
  }

  /// `Scan`
  String get scan {
    return Intl.message(
      'Scan',
      name: 'scan',
      desc: '',
      args: [],
    );
  }

  /// `Generate`
  String get generate {
    return Intl.message(
      'Generate',
      name: 'generate',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy {
    return Intl.message(
      'Copy',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Copied to clipboard`
  String get copiedToClipboard {
    return Intl.message(
      'Copied to clipboard',
      name: 'copiedToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Open failed`
  String get openFailed {
    return Intl.message(
      'Open failed',
      name: 'openFailed',
      desc: '',
      args: [],
    );
  }

  /// `Cannot open this content. Please try copy instead.`
  String get cannotOpenContent {
    return Intl.message(
      'Cannot open this content. Please try copy instead.',
      name: 'cannotOpenContent',
      desc: '',
      args: [],
    );
  }

  /// `Delete QR?`
  String get deleteQR {
    return Intl.message(
      'Delete QR?',
      name: 'deleteQR',
      desc: '',
      args: [],
    );
  }

  /// `This QR will be removed from history.`
  String get deleteQRMessage {
    return Intl.message(
      'This QR will be removed from history.',
      name: 'deleteQRMessage',
      desc: '',
      args: [],
    );
  }

  /// `Clear history?`
  String get clearHistory {
    return Intl.message(
      'Clear history?',
      name: 'clearHistory',
      desc: '',
      args: [],
    );
  }

  /// `All scan and generate history will be removed.`
  String get clearHistoryMessage {
    return Intl.message(
      'All scan and generate history will be removed.',
      name: 'clearHistoryMessage',
      desc: '',
      args: [],
    );
  }

  /// `History cleared`
  String get historyCleared {
    return Intl.message(
      'History cleared',
      name: 'historyCleared',
      desc: '',
      args: [],
    );
  }

  /// `History is already empty`
  String get historyEmpty {
    return Intl.message(
      'History is already empty',
      name: 'historyEmpty',
      desc: '',
      args: [],
    );
  }

  /// `No history yet`
  String get noHistory {
    return Intl.message(
      'No history yet',
      name: 'noHistory',
      desc: '',
      args: [],
    );
  }

  /// `Scan a QR code or generate one to get started`
  String get scanToStart {
    return Intl.message(
      'Scan a QR code or generate one to get started',
      name: 'scanToStart',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Flash`
  String get flash {
    return Intl.message(
      'Flash',
      name: 'flash',
      desc: '',
      args: [],
    );
  }

  /// `Flip`
  String get flip {
    return Intl.message(
      'Flip',
      name: 'flip',
      desc: '',
      args: [],
    );
  }

  /// `Permission denied`
  String get permissionDenied {
    return Intl.message(
      'Permission denied',
      name: 'permissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Camera permission is required to scan QR codes`
  String get cameraPermission {
    return Intl.message(
      'Camera permission is required to scan QR codes',
      name: 'cameraPermission',
      desc: '',
      args: [],
    );
  }

  /// `Go Premium`
  String get goPremium {
    return Intl.message(
      'Go Premium',
      name: 'goPremium',
      desc: '',
      args: [],
    );
  }

  /// `Remove Ads`
  String get removeAds {
    return Intl.message(
      'Remove Ads',
      name: 'removeAds',
      desc: '',
      args: [],
    );
  }

  /// `You are Premium`
  String get youArePremium {
    return Intl.message(
      'You are Premium',
      name: 'youArePremium',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy unlimited scanning without ads`
  String get enjoyUnlimited {
    return Intl.message(
      'Enjoy unlimited scanning without ads',
      name: 'enjoyUnlimited',
      desc: '',
      args: [],
    );
  }

  /// `Unlock a clean, ad-free scanning experience`
  String get unlockAdFree {
    return Intl.message(
      'Unlock a clean, ad-free scanning experience',
      name: 'unlockAdFree',
      desc: '',
      args: [],
    );
  }

  /// `No more ads`
  String get noMoreAds {
    return Intl.message(
      'No more ads',
      name: 'noMoreAds',
      desc: '',
      args: [],
    );
  }

  /// `Scan and generate without interruptions`
  String get noMoreAdsSubtitle {
    return Intl.message(
      'Scan and generate without interruptions',
      name: 'noMoreAdsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Faster experience`
  String get fasterExperience {
    return Intl.message(
      'Faster experience',
      name: 'fasterExperience',
      desc: '',
      args: [],
    );
  }

  /// `Less loading, more productivity`
  String get fasterExperienceSubtitle {
    return Intl.message(
      'Less loading, more productivity',
      name: 'fasterExperienceSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Support development`
  String get supportDev {
    return Intl.message(
      'Support development',
      name: 'supportDev',
      desc: '',
      args: [],
    );
  }

  /// `Help us keep improving the app`
  String get supportDevSubtitle {
    return Intl.message(
      'Help us keep improving the app',
      name: 'supportDevSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Premium active`
  String get premiumActive {
    return Intl.message(
      'Premium active',
      name: 'premiumActive',
      desc: '',
      args: [],
    );
  }

  /// `Premium unavailable`
  String get premiumUnavailable {
    return Intl.message(
      'Premium unavailable',
      name: 'premiumUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Purchase completed. Thank you!`
  String get purchaseCompleted {
    return Intl.message(
      'Purchase completed. Thank you!',
      name: 'purchaseCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Purchase failed`
  String get purchaseFailed {
    return Intl.message(
      'Purchase failed',
      name: 'purchaseFailed',
      desc: '',
      args: [],
    );
  }

  /// `Unable to complete purchase. Please try again.`
  String get purchaseFailedMessage {
    return Intl.message(
      'Unable to complete purchase. Please try again.',
      name: 'purchaseFailedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Payment is processed securely by the store. You can restore purchases from your store account.`
  String get paymentSecure {
    return Intl.message(
      'Payment is processed securely by the store. You can restore purchases from your store account.',
      name: 'paymentSecure',
      desc: '',
      args: [],
    );
  }

  /// `Restore purchases`
  String get restorePurchases {
    return Intl.message(
      'Restore purchases',
      name: 'restorePurchases',
      desc: '',
      args: [],
    );
  }

  /// `Send Email`
  String get sendEmail {
    return Intl.message(
      'Send Email',
      name: 'sendEmail',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get call {
    return Intl.message(
      'Call',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Send SMS`
  String get sendSMS {
    return Intl.message(
      'Send SMS',
      name: 'sendSMS',
      desc: '',
      args: [],
    );
  }

  /// `Open Maps`
  String get openMaps {
    return Intl.message(
      'Open Maps',
      name: 'openMaps',
      desc: '',
      args: [],
    );
  }

  /// `Wi-Fi Info`
  String get wifiInfo {
    return Intl.message(
      'Wi-Fi Info',
      name: 'wifiInfo',
      desc: '',
      args: [],
    );
  }

  /// `Rate QRick`
  String get rateApp {
    return Intl.message(
      'Rate QRick',
      name: 'rateApp',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Learn more`
  String get learnMore {
    return Intl.message(
      'Learn more',
      name: 'learnMore',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance`
  String get maintenance {
    return Intl.message(
      'Maintenance',
      name: 'maintenance',
      desc: '',
      args: [],
    );
  }

  /// `We are performing maintenance. Please check back soon.`
  String get maintenanceMessage {
    return Intl.message(
      'We are performing maintenance. Please check back soon.',
      name: 'maintenanceMessage',
      desc: '',
      args: [],
    );
  }

  /// `Generate QR for {type}`
  String generateQRFor(String type) {
    return Intl.message(
      'Generate QR for $type',
      name: 'generateQRFor',
      desc: '',
      args: [type],
    );
  }

  /// `Your text`
  String get yourText {
    return Intl.message(
      'Your text',
      name: 'yourText',
      desc: '',
      args: [],
    );
  }

  /// `Your URL`
  String get yourUrl {
    return Intl.message(
      'Your URL',
      name: 'yourUrl',
      desc: '',
      args: [],
    );
  }

  /// `Put your link here`
  String get putLinkHere {
    return Intl.message(
      'Put your link here',
      name: 'putLinkHere',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get subject {
    return Intl.message(
      'Subject',
      name: 'subject',
      desc: '',
      args: [],
    );
  }

  /// `Network SSID (Name)`
  String get networkName {
    return Intl.message(
      'Network SSID (Name)',
      name: 'networkName',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Hidden`
  String get hidden {
    return Intl.message(
      'Hidden',
      name: 'hidden',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstName {
    return Intl.message(
      'First name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastName {
    return Intl.message(
      'Last name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Your Job`
  String get job {
    return Intl.message(
      'Your Job',
      name: 'job',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Your website`
  String get website {
    return Intl.message(
      'Your website',
      name: 'website',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message(
      'Street',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Event Title`
  String get eventTitle {
    return Intl.message(
      'Event Title',
      name: 'eventTitle',
      desc: '',
      args: [],
    );
  }

  /// `Event Location`
  String get eventLocation {
    return Intl.message(
      'Event Location',
      name: 'eventLocation',
      desc: '',
      args: [],
    );
  }

  /// `Start time`
  String get startTime {
    return Intl.message(
      'Start time',
      name: 'startTime',
      desc: '',
      args: [],
    );
  }

  /// `End time`
  String get endTime {
    return Intl.message(
      'End time',
      name: 'endTime',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Scanned`
  String get scanned {
    return Intl.message(
      'Scanned',
      name: 'scanned',
      desc: '',
      args: [],
    );
  }

  /// `Generated`
  String get generated {
    return Intl.message(
      'Generated',
      name: 'generated',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get noResults {
    return Intl.message(
      'No results found',
      name: 'noResults',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get darkMode {
    return Intl.message(
      'Dark',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get lightMode {
    return Intl.message(
      'Light',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get systemMode {
    return Intl.message(
      'System',
      name: 'systemMode',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Share app`
  String get shareApp {
    return Intl.message(
      'Share app',
      name: 'shareApp',
      desc: '',
      args: [],
    );
  }

  /// `Privacy policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Terms of service`
  String get termsOfService {
    return Intl.message(
      'Terms of service',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message(
      'FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contactUs {
    return Intl.message(
      'Contact us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Open browser`
  String get openBrowser {
    return Intl.message(
      'Open browser',
      name: 'openBrowser',
      desc: '',
      args: [],
    );
  }

  /// `Failed to open browser. Please try again!`
  String get failedOpenBrowser {
    return Intl.message(
      'Failed to open browser. Please try again!',
      name: 'failedOpenBrowser',
      desc: '',
      args: [],
    );
  }

  /// `Failed to open mail. Please try again`
  String get failedOpenMail {
    return Intl.message(
      'Failed to open mail. Please try again',
      name: 'failedOpenMail',
      desc: '',
      args: [],
    );
  }

  /// `Wi-Fi`
  String get wifi {
    return Intl.message(
      'Wi-Fi',
      name: 'wifi',
      desc: '',
      args: [],
    );
  }

  /// `Text`
  String get text {
    return Intl.message(
      'Text',
      name: 'text',
      desc: '',
      args: [],
    );
  }

  /// `URL`
  String get url {
    return Intl.message(
      'URL',
      name: 'url',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailType {
    return Intl.message(
      'Email',
      name: 'emailType',
      desc: '',
      args: [],
    );
  }

  /// `SMS`
  String get sms {
    return Intl.message(
      'SMS',
      name: 'sms',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Event`
  String get event {
    return Intl.message(
      'Event',
      name: 'event',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get product {
    return Intl.message(
      'Product',
      name: 'product',
      desc: '',
      args: [],
    );
  }

  /// `Crypto`
  String get crypto {
    return Intl.message(
      'Crypto',
      name: 'crypto',
      desc: '',
      args: [],
    );
  }

  /// `Barcode`
  String get barcode {
    return Intl.message(
      'Barcode',
      name: 'barcode',
      desc: '',
      args: [],
    );
  }

  /// `Choose language`
  String get chooseLanguage {
    return Intl.message(
      'Choose language',
      name: 'chooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get langEnglish {
    return Intl.message(
      'English',
      name: 'langEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Việt`
  String get langVietnamese {
    return Intl.message(
      'Tiếng Việt',
      name: 'langVietnamese',
      desc: '',
      args: [],
    );
  }

  /// `ไทย`
  String get langThai {
    return Intl.message(
      'ไทย',
      name: 'langThai',
      desc: '',
      args: [],
    );
  }

  /// `中文`
  String get langChinese {
    return Intl.message(
      '中文',
      name: 'langChinese',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Are you happy with {app}?`
  String areYouHappy(String app) {
    return Intl.message(
      'Are you happy with $app?',
      name: 'areYouHappy',
      desc: '',
      args: [app],
    );
  }

  /// `Your feedback helps us improve the app.`
  String get feedbackHelp {
    return Intl.message(
      'Your feedback helps us improve the app.',
      name: 'feedbackHelp',
      desc: '',
      args: [],
    );
  }

  /// `Version {version}`
  String versionLabel(String version) {
    return Intl.message(
      'Version $version',
      name: 'versionLabel',
      desc: '',
      args: [version],
    );
  }

  /// `{app} Team`
  String teamLabel(String app) {
    return Intl.message(
      '$app Team',
      name: 'teamLabel',
      desc: '',
      args: [app],
    );
  }

  /// `Text`
  String get typeText {
    return Intl.message(
      'Text',
      name: 'typeText',
      desc: '',
      args: [],
    );
  }

  /// `URL`
  String get typeUrl {
    return Intl.message(
      'URL',
      name: 'typeUrl',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get typeEmail {
    return Intl.message(
      'Email',
      name: 'typeEmail',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get typePhone {
    return Intl.message(
      'Phone',
      name: 'typePhone',
      desc: '',
      args: [],
    );
  }

  /// `SMS`
  String get typeSms {
    return Intl.message(
      'SMS',
      name: 'typeSms',
      desc: '',
      args: [],
    );
  }

  /// `Wi-Fi`
  String get typeWifi {
    return Intl.message(
      'Wi-Fi',
      name: 'typeWifi',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get typeContact {
    return Intl.message(
      'Contact',
      name: 'typeContact',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get typeLocation {
    return Intl.message(
      'Location',
      name: 'typeLocation',
      desc: '',
      args: [],
    );
  }

  /// `Event`
  String get typeEvent {
    return Intl.message(
      'Event',
      name: 'typeEvent',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get typeProduct {
    return Intl.message(
      'Product',
      name: 'typeProduct',
      desc: '',
      args: [],
    );
  }

  /// `Crypto`
  String get typeCrypto {
    return Intl.message(
      'Crypto',
      name: 'typeCrypto',
      desc: '',
      args: [],
    );
  }

  /// `Maps`
  String get typeMaps {
    return Intl.message(
      'Maps',
      name: 'typeMaps',
      desc: '',
      args: [],
    );
  }

  /// `Controller not ready`
  String get controllerNotReady {
    return Intl.message(
      'Controller not ready',
      name: 'controllerNotReady',
      desc: '',
      args: [],
    );
  }

  /// `Scanning is unsupported on this device`
  String get scanningUnsupported {
    return Intl.message(
      'Scanning is unsupported on this device',
      name: 'scanningUnsupported',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get genericError {
    return Intl.message(
      'Something went wrong',
      name: 'genericError',
      desc: '',
      args: [],
    );
  }

  /// `Your text`
  String get hintYourText {
    return Intl.message(
      'Your text',
      name: 'hintYourText',
      desc: '',
      args: [],
    );
  }

  /// `Your URL`
  String get hintYourUrl {
    return Intl.message(
      'Your URL',
      name: 'hintYourUrl',
      desc: '',
      args: [],
    );
  }

  /// `Paste your link here`
  String get hintPutLink {
    return Intl.message(
      'Paste your link here',
      name: 'hintPutLink',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get hintPhone {
    return Intl.message(
      'Phone number',
      name: 'hintPhone',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get hintMessage {
    return Intl.message(
      'Message',
      name: 'hintMessage',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get hintSubject {
    return Intl.message(
      'Subject',
      name: 'hintSubject',
      desc: '',
      args: [],
    );
  }

  /// `Network name (SSID)`
  String get hintNetwork {
    return Intl.message(
      'Network name (SSID)',
      name: 'hintNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get hintPassword {
    return Intl.message(
      'Password',
      name: 'hintPassword',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get hintFirstName {
    return Intl.message(
      'First name',
      name: 'hintFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get hintLastName {
    return Intl.message(
      'Last name',
      name: 'hintLastName',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get hintCompany {
    return Intl.message(
      'Company',
      name: 'hintCompany',
      desc: '',
      args: [],
    );
  }

  /// `Job title`
  String get hintJob {
    return Intl.message(
      'Job title',
      name: 'hintJob',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get hintEmail {
    return Intl.message(
      'Email',
      name: 'hintEmail',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get hintWebsite {
    return Intl.message(
      'Website',
      name: 'hintWebsite',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get hintStreet {
    return Intl.message(
      'Street',
      name: 'hintStreet',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get hintCity {
    return Intl.message(
      'City',
      name: 'hintCity',
      desc: '',
      args: [],
    );
  }

  /// `State / Province`
  String get hintState {
    return Intl.message(
      'State / Province',
      name: 'hintState',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get hintCountry {
    return Intl.message(
      'Country',
      name: 'hintCountry',
      desc: '',
      args: [],
    );
  }

  /// `Event title`
  String get hintEventTitle {
    return Intl.message(
      'Event title',
      name: 'hintEventTitle',
      desc: '',
      args: [],
    );
  }

  /// `Event location`
  String get hintEventLocation {
    return Intl.message(
      'Event location',
      name: 'hintEventLocation',
      desc: '',
      args: [],
    );
  }

  /// `Start time`
  String get hintStartTime {
    return Intl.message(
      'Start time',
      name: 'hintStartTime',
      desc: '',
      args: [],
    );
  }

  /// `End time`
  String get hintEndTime {
    return Intl.message(
      'End time',
      name: 'hintEndTime',
      desc: '',
      args: [],
    );
  }

  /// `@username`
  String get hintUsername {
    return Intl.message(
      '@username',
      name: 'hintUsername',
      desc: '',
      args: [],
    );
  }

  /// `Write a message`
  String get hintCompose {
    return Intl.message(
      'Write a message',
      name: 'hintCompose',
      desc: '',
      args: [],
    );
  }

  /// `Latitude`
  String get hintLatitude {
    return Intl.message(
      'Latitude',
      name: 'hintLatitude',
      desc: '',
      args: [],
    );
  }

  /// `Longitude`
  String get hintLongitude {
    return Intl.message(
      'Longitude',
      name: 'hintLongitude',
      desc: '',
      args: [],
    );
  }

  /// `Describe your product`
  String get hintProduct {
    return Intl.message(
      'Describe your product',
      name: 'hintProduct',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get hintAmount {
    return Intl.message(
      'Amount',
      name: 'hintAmount',
      desc: '',
      args: [],
    );
  }

  /// `Receiver address`
  String get hintReceiver {
    return Intl.message(
      'Receiver address',
      name: 'hintReceiver',
      desc: '',
      args: [],
    );
  }

  /// `Video ID or URL`
  String get hintVideoId {
    return Intl.message(
      'Video ID or URL',
      name: 'hintVideoId',
      desc: '',
      args: [],
    );
  }

  /// `Hidden network`
  String get hiddenNetwork {
    return Intl.message(
      'Hidden network',
      name: 'hiddenNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsTitle {
    return Intl.message(
      'Settings',
      name: 'settingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get appearance {
    return Intl.message(
      'Appearance',
      name: 'appearance',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Current`
  String get currentLanguage {
    return Intl.message(
      'Current',
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
