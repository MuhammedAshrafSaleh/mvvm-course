import 'package:flutter/material.dart';
import 'package:mvvm_course/presentation/color_manager.dart';
import 'package:mvvm_course/presentation/font_manager.dart';
import 'package:mvvm_course/presentation/styles_manager.dart';
import 'package:mvvm_course/presentation/values_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,

    // Card Theme
    cardTheme: CardThemeData(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s8,
    ),
    // AppBar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
    ),

    // Button Theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightGrey,
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s18,
        ),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    // Text theme
    // Here I should make the theme looks like each other
    textTheme: TextTheme(
      displayLarge: getMediumStyle(
        color: ColorManager.white,
        fontSize: FontSize.s22,
      ),
      headlineMedium: getSemiBoldStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s16,
      ),
      titleMedium: getMediumStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.s14,
      ),
      titleSmall: getMediumStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.s14,
      ),
      bodyMedium: getMediumStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.s14,
      ),
    ),

    // input decoration theme (text form field)
  );
}
