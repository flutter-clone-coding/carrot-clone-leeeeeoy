import 'package:carrot_clone/app_route.dart';
import 'package:carrot_clone/feature/main/main_page.dart';
import 'package:carrot_clone/resource/resource.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: child!,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MainPage.routeName,
      theme: AppTheme.light,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
