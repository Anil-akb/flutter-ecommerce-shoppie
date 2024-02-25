import 'package:flutter/material.dart';
import 'package:shoppie/utils/theme/custome_theme/appbar_theme.dart';
import 'package:shoppie/utils/theme/custome_theme/bottom_sheet_theme.dart';
import 'package:shoppie/utils/theme/custome_theme/checkbox_theme.dart';
import 'package:shoppie/utils/theme/custome_theme/chip_theme.dart';
import 'package:shoppie/utils/theme/custome_theme/elevated_button_theme.dart';
import 'package:shoppie/utils/theme/custome_theme/outlined_botton_theme.dart';
import 'package:shoppie/utils/theme/custome_theme/text_field_theme.dart';
import 'package:shoppie/utils/theme/custome_theme/text_theme.dart';

class SAppTheme {
  SAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: STextTheme.lightTextTheme,
    chipTheme: SChipTheme.lightChipTheme,
    appBarTheme: SAppBarTheme.lightAppBarTheme,
    checkboxTheme: SCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.blue,
    textTheme: STextTheme.darkTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: SChipTheme.darkChipTheme,
    appBarTheme: SAppBarTheme.darkAppBarTheme,
    checkboxTheme: SCheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.darkInputDecorationTheme,
  );
}
