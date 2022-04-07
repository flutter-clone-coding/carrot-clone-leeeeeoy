import 'package:carrot_clone/feature/main/main_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MainBottomNavigationBar(),
      body: Center(
        child: Text('LocationPage'),
      ),
    );
  }
}
