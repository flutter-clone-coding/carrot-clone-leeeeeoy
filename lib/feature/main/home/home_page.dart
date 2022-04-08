import 'package:carrot_clone/feature/main/main_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      appBar: AppBar(),
      body: Center(
        child: Text('HomePage'),
      ),
    );
  }
}
