import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/custom_theme/appbar_theme.dart';
import 'package:t_store/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:t_store/utils/theme/custom_theme/check_box_theme.dart';
import 'package:t_store/utils/theme/custom_theme/chip_theme.dart';
import 'package:t_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:t_store/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:t_store/utils/theme/custom_theme/text_filed_theme.dart';
import 'package:t_store/utils/theme/custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppbarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFiledTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppbarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFiledTheme.darkInputDecorationTheme,
  );
}
