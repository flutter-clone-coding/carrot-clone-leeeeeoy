import 'package:carrot_clone/feature/intro/input_phone_number_page.dart';
import 'package:carrot_clone/feature/intro/intro_page.dart';
import 'package:flutter/material.dart';

abstract class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late Widget _page;

    switch (settings.name) {
      case IntroPage.routeName:
        _page = const IntroPage();
        break;
      case InputPhoneNumberPage.routeName:
        _page = const InputPhoneNumberPage();
        break;
    }

    return MaterialPageRoute(builder: (context) => _page);
  }
}
