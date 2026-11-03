// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_en.dart' as messages_en;
import 'messages_th.dart' as messages_th;
import 'messages_vi.dart' as messages_vi;
import 'messages_zh.dart' as messages_zh;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'en': () => Future.value(null),
  'th': () => Future.value(null),
  'vi': () => Future.value(null),
  'zh': () => Future.value(null),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'en':
      return messages_en.messages;
    case 'th':
      return messages_th.messages;
    case 'vi':
      return messages_vi.messages;
    case 'zh':
      return messages_zh.messages;
    default:
      return null;
  }
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

Future<bool> initializeMessages(String localeName) {
  var availableLocale = Intl.verifiedLocale(
    localeName,
    _messagesExistFor,
    onFailure: (_) => null,
  );
  if (availableLocale == null) {
    return SynchronousFuture(false);
  }
  return _deferredLibraries[availableLocale]!().then((_) {
    initializeInternalMessageLookup(() => CompositeMessageLookup());
    messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
    return true;
  });
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  var actualLocale = Intl.verifiedLocale(
    locale,
    _messagesExistFor,
    onFailure: (_) => null,
  );
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
