import 'package:flutter/material.dart';

import '../enums/theme_type.dart';
import 'app_colors.dart';
import 'font_constants.dart';

class AppTheme {
  static ThemeData getAppTheme(BuildContext context, ThemeType themeType) {
    return ThemeData(
      useMaterial3: true,
      /// app color scheme
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
      ),

      primaryColor: AppColors.primaryColor,

      /// scaffold color
      scaffoldBackgroundColor: themeType == ThemeType.lightTheme
          ? AppColors.scaffoldColor
          : AppColors.darkScaffoldColor,

      /// app bar theme
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
            backgroundColor: themeType == ThemeType.lightTheme
                ? AppColors.scaffoldColor
                : AppColors.darkScaffoldColor,
            iconTheme: Theme.of(context).iconTheme.copyWith(
                  color: themeType == ThemeType.lightTheme
                      ? AppColors.blackColor
                      : AppColors.whiteColor,
                ),
          ),

      /// card theme
      cardTheme: Theme.of(context).cardTheme.copyWith(
            color: themeType == ThemeType.lightTheme
                ? AppColors.whiteColor
                : AppColors.darkScaffoldColor,
          ),

      bottomSheetTheme: Theme.of(context).bottomSheetTheme.copyWith(
            backgroundColor: themeType == ThemeType.lightTheme
                ? AppColors.whiteColor
                : AppColors.blackColor,
          ),
      //

      /// icon theme
      iconTheme: Theme.of(context).iconTheme.copyWith(
            color: themeType == ThemeType.lightTheme
                ? AppColors.blackColor
                : AppColors.whiteColor,
          ),
      listTileTheme: Theme.of(context).listTileTheme.copyWith(
            tileColor: themeType == ThemeType.darkTheme
                ? AppColors.blackColor
                : AppColors.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),

      /// font family
      fontFamily: FontFamilyConstants.fontName,

      /// text theme
      textTheme: Theme.of(context).textTheme.copyWith(
            titleMedium: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: themeType == ThemeType.lightTheme
                      ? AppColors.blackColor
                      : AppColors.whiteColor,
                  fontWeight: FontWeightConstants.regular,
                  decoration: TextDecoration.none,
                  fontFamily: FontFamilyConstants.fontName,
                ),
          ),

      expansionTileTheme: Theme.of(context).expansionTileTheme.copyWith(
          collapsedBackgroundColor: themeType == ThemeType.darkTheme
              ? AppColors.blackColor
              : AppColors.scaffoldColor,
          backgroundColor: themeType == ThemeType.darkTheme
              ? AppColors.blackColor
              : AppColors.scaffoldColor),
    );
  }
}
