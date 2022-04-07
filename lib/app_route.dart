import 'package:carrot_clone/feature/intro/input_phone_number_page.dart';
import 'package:carrot_clone/feature/intro/intro_page.dart';
import 'package:carrot_clone/feature/main/bloc/main_page_index_bloc.dart';
import 'package:carrot_clone/feature/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      case MainPage.routeName:
        _page = BlocProvider(
          create: (context) => MainPageIndexBloc(),
          child: const MainPage(),
        );
        break;
    }

    return MaterialPageRoute(builder: (context) => _page);
  }
}
