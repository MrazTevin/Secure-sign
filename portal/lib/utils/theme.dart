import 'package:flutter/material.dart';
import 'package:secure_sign/utils/text_field_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme

  );

}