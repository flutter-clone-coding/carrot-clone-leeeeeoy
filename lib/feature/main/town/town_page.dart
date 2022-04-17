import 'package:carrot_clone/feature/main/main_bottom_navigation_bar.dart';
import 'package:carrot_clone/widget/button/notification_button.dart';
import 'package:carrot_clone/widget/button/search_button.dart';
import 'package:carrot_clone/widget/title/dropdown_app_bar_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TownPage extends StatelessWidget {
  const TownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Hello'),
      ),
      appBar: AppBar(
        title: const DropdownAppBarTitle(),
        actions: const [
          SearchButton(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Icon(CupertinoIcons.bars),
          ),
          NotificationButton(),
          SizedBox(width: 10),
        ],
      ),
      body: const Center(
        child: Text('TownPage'),
      ),
    );
  }
}
