import 'package:flutter/material.dart';

import 'color_palette.dart';

abstract final class AppTheme {
  static bool isDarkMode(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark;
  }

  static bool isLightMode(BuildContext context) => !isDarkMode(context);

  static ThemeData get lightTheme {
    final ThemeData base = ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light(
        primary: ColorPalette.primaryColor,
        onPrimary: ColorPalette.onPrimaryColor,
        secondary: ColorPalette.primaryColor,
        onSecondary: ColorPalette.onPrimaryColor,
        background: ColorPalette.backgroundColor,
        onBackground: ColorPalette.onBackgroundColor,
        surface: ColorPalette.backgroundColor,
        onSurface: ColorPalette.onBackgroundColor,
        onSurfaceVariant: ColorPalette.onBackgroundVariantColor,
        outlineVariant: ColorPalette.dividerColor,
      ),
      primaryColor: ColorPalette.primaryColor,
      dividerColor: ColorPalette.dividerColor,
    );
    return _buildThemeData(base);
  }

  static ThemeData _buildThemeData(ThemeData base) {
    base = base.copyWith(
      textTheme: _buildTextTheme(base),
      inputDecorationTheme: _buildInputDecorationTheme(base),
    );
    return ThemeData(
      brightness: base.brightness,
      colorScheme: base.colorScheme,
      textTheme: base.textTheme,
      appBarTheme: _buildAppBarTheme(base),
      iconTheme: _buildIconThemeData(base),
      inputDecorationTheme: base.inputDecorationTheme,
      iconButtonTheme: _buildIconButtonTheme(base),
      outlinedButtonTheme: _buildOutlinedButtonThemeData(base),
      elevatedButtonTheme: _buildElevatedButtonThemeData(base),
      filledButtonTheme: _buildFilledButtonThemeData(base),
      textButtonTheme: _buildTextButtonThemeData(base),
      tabBarTheme: _buildTabBarTheme(base),
      bottomNavigationBarTheme: _buildBottomNavigationBarThemeData(base),
      checkboxTheme: _buildCheckboxTheme(base),
      bottomSheetTheme: _buildBottomSheetTheme(base),
      searchBarTheme: _buildSearchBarTheme(base),
      primaryColor: base.primaryColor,
      disabledColor: base.disabledColor,
      scaffoldBackgroundColor: base.scaffoldBackgroundColor,
      dividerColor: base.dividerColor,
      unselectedWidgetColor: base.unselectedWidgetColor,
      switchTheme: base.switchTheme,
      radioTheme: base.radioTheme,
      shadowColor: base.shadowColor,
      chipTheme: _buildChipTheme(base),
    );
  }

  static ChipThemeData _buildChipTheme(ThemeData base) {
    return ChipThemeData(
      backgroundColor: base.colorScheme.surface,
      disabledColor: base.disabledColor,
      selectedColor: base.colorScheme.primary,
      secondarySelectedColor: base.colorScheme.primary,
      labelPadding: EdgeInsets.zero,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      shape: StadiumBorder(side: BorderSide(color: base.colorScheme.primary)),
      secondaryLabelStyle: TextStyle(
        color: base.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      ),
      labelStyle: TextStyle(
        fontSize: 14,
        color: base.colorScheme.primary,
        fontWeight: FontWeight.w600,
      ),
      brightness: base.brightness,
    );
  }

  static CheckboxThemeData _buildCheckboxTheme(ThemeData base) {
    return CheckboxThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return base.colorScheme.primary;
        }
        return null;
      }),
      checkColor: MaterialStateProperty.all<Color>(base.colorScheme.surface),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      side: BorderSide(color: base.disabledColor),
    );
  }

  static BottomSheetThemeData _buildBottomSheetTheme(ThemeData base) {
    return BottomSheetThemeData(
      clipBehavior: Clip.hardEdge,
      modalBarrierColor: base.colorScheme.primary.withOpacity(.75),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
    );
  }

  static SearchBarThemeData _buildSearchBarTheme(ThemeData base) {
    return SearchBarThemeData(
      elevation: const MaterialStatePropertyAll(0.0),
      side: MaterialStateProperty.resolveWith((states) {
        if (!states.contains(MaterialState.disabled)) {
          final enabledBorder = BorderSide(color: base.colorScheme.primary);
          if (states.contains(MaterialState.focused)) {
            return enabledBorder.copyWith(width: 2.0);
          }
          return enabledBorder;
        }
        return BorderSide.none;
      }),
      constraints: BoxConstraints(
        minWidth: 360.0,
        maxWidth: 800.0,
        minHeight: base.textTheme.bodyMedium?.height ?? 12.0,
      ),
      padding: const MaterialStatePropertyAll(
        EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
      ),
      hintStyle: MaterialStatePropertyAll(base.inputDecorationTheme.hintStyle),
      textStyle: MaterialStatePropertyAll(base.textTheme.bodyMedium),
    );
  }

  static AppBarTheme _buildAppBarTheme(ThemeData theme) {
    return AppBarTheme(
      titleTextStyle: TextStyle(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: theme.iconTheme.copyWith(
        color: theme.colorScheme.secondary,
      ),
    );
  }

  static InputDecorationTheme _buildInputDecorationTheme(ThemeData theme) =>
      InputDecorationTheme(
        hintStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        iconColor: theme.colorScheme.primary,
        filled: true,
        isDense: true,
        fillColor: theme.colorScheme.surface,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
        errorStyle: TextStyle(color: theme.colorScheme.error),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(17.0)),
          borderSide: BorderSide(color: theme.colorScheme.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(17.0)),
          borderSide: BorderSide(color: theme.colorScheme.primary),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(17.0)),
          borderSide: BorderSide(color: theme.dividerColor),
        ),
      );

  static IconButtonThemeData _buildIconButtonTheme(ThemeData theme) =>
      IconButtonThemeData(
        style: IconButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: theme.colorScheme.onPrimary,
          foregroundColor: theme.colorScheme.primary,
        ),
      );

  static OutlinedButtonThemeData _buildOutlinedButtonThemeData(
          ThemeData theme) =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          shape: const StadiumBorder(),
        ),
      );

  static ElevatedButtonThemeData _buildElevatedButtonThemeData(
          ThemeData theme) =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          // I don't know why this never affected, even [TextTheme.labelLarge] set like this
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          elevation: 0,
          shape: const StadiumBorder(),
        ),
      );

  static FilledButtonThemeData _buildFilledButtonThemeData(ThemeData theme) =>
      FilledButtonThemeData(
        style: ElevatedButton.styleFrom(
          // I don't know why this never affected, even [TextTheme.labelLarge] set like this
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          disabledBackgroundColor: theme.disabledColor,
          disabledForegroundColor: theme.colorScheme.onBackground,
          elevation: 0,
          shape: const StadiumBorder(),
        ),
      );

  static TextButtonThemeData _buildTextButtonThemeData(ThemeData theme) =>
      TextButtonThemeData(
        style: TextButton.styleFrom(
          // I don't know why this never affected, even [TextTheme.labelLarge] set like this
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          elevation: 0,
          shape: const StadiumBorder(),
        ),
      );

  static TabBarTheme _buildTabBarTheme(ThemeData theme) {
    return TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        borderSide: BorderSide(
          width: 3.0,
          color: theme.colorScheme.primary,
        ),
      ),
      labelStyle: const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelColor: theme.colorScheme.onBackground,
    );
  }

  static BottomNavigationBarThemeData _buildBottomNavigationBarThemeData(
          ThemeData theme) =>
      BottomNavigationBarThemeData(
        selectedItemColor: theme.colorScheme.primary,
        unselectedItemColor: theme.colorScheme.onSurface,
        elevation: 10,
        backgroundColor: theme.colorScheme.background,
      );

  static IconThemeData _buildIconThemeData(ThemeData theme) =>
      theme.iconTheme.copyWith(
        color: theme.primaryColor,
      );

  static TextTheme _buildTextTheme(ThemeData base) {
    return base.textTheme
        .apply(
          fontFamily: 'Inter',
          displayColor: base.colorScheme.onBackground,
          bodyColor: base.colorScheme.onBackground,
        )
        .copyWith(
          titleLarge: TextStyle(color: base.colorScheme.onSurfaceVariant),
          titleMedium: TextStyle(color: base.colorScheme.onSurfaceVariant),
          titleSmall: TextStyle(color: base.colorScheme.onSurfaceVariant),
        );
  }
}
