part of 'resource.dart';

abstract class AppTheme {
  static final light = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.white,
      elevation: 0,
      toolbarHeight: 56,
      centerTitle: false,
      titleSpacing: 0,
      foregroundColor: AppColor.black,
      shape: Border(
        bottom: BorderSide(
          color: AppColor.lightGrey,
          width: 1,
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.primary,
      foregroundColor: AppColor.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColor.lightGrey;
          } else {
            return AppColor.primary;
          }
        }),
        foregroundColor: MaterialStateProperty.all(AppColor.white),
        elevation: MaterialStateProperty.all(0),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.black,
    ),
  );

  static final dark = ThemeData();
}
