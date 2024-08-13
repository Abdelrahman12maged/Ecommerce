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

  /// `Wide Selection of Electronics`
  String get title1 {
    return Intl.message(
      'Wide Selection of Electronics',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  /// `Explore our extensive collection of the latest electronic devices.`
  String get subtitle1 {
    return Intl.message(
      'Explore our extensive collection of the latest electronic devices.',
      name: 'subtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Secure and Easy Payment`
  String get title2 {
    return Intl.message(
      'Secure and Easy Payment',
      name: 'title2',
      desc: '',
      args: [],
    );
  }

  /// `Experience hassle-free and secure payment options for your purchases.`
  String get subtitle2 {
    return Intl.message(
      'Experience hassle-free and secure payment options for your purchases.',
      name: 'subtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Real-time Order Tracking`
  String get title3 {
    return Intl.message(
      'Real-time Order Tracking',
      name: 'title3',
      desc: '',
      args: [],
    );
  }

  /// `Stay updated with real-time tracking of your orders.`
  String get subtitle3 {
    return Intl.message(
      'Stay updated with real-time tracking of your orders.',
      name: 'subtitle3',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image`
  String get uploadimageCirclAvatar {
    return Intl.message(
      'Upload Image',
      name: 'uploadimageCirclAvatar',
      desc: '',
      args: [],
    );
  }

  /// `Name:`
  String get name_label {
    return Intl.message(
      'Name:',
      name: 'name_label',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get name_hint {
    return Intl.message(
      'Enter your name',
      name: 'name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Email:`
  String get email_label {
    return Intl.message(
      'Email:',
      name: 'email_label',
      desc: '',
      args: [],
    );
  }

  /// `Enter email`
  String get email_hint {
    return Intl.message(
      'Enter email',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password:`
  String get password_label {
    return Intl.message(
      'Password:',
      name: 'password_label',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get password_hint {
    return Intl.message(
      'Enter password',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password:`
  String get confirm_password_label {
    return Intl.message(
      'Confirm Password:',
      name: 'confirm_password_label',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirm_password_hint {
    return Intl.message(
      'Confirm password',
      name: 'confirm_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `sign up`
  String get sign_up {
    return Intl.message(
      'sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Already have  account ?  `
  String get have_account {
    return Intl.message(
      'Already have  account ?  ',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `if you have not account ?  `
  String get have_not_account {
    return Intl.message(
      'if you have not account ?  ',
      name: 'have_not_account',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Search product here...`
  String get serchproducthere {
    return Intl.message(
      'Search product here...',
      name: 'serchproducthere',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
