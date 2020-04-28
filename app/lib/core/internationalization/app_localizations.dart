import 'dart:convert';
import 'package:app/core/internationalization/app_localization_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {

  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context){
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();

  Map<String, String> _localizedStrings;

  Future<bool> load() async {
    String jsonString = await rootBundle.loadString('lang/${locale.languageCode}.json');

    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value){
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String translate(String key){
    return _localizedStrings[key];
  }
}