import 'package:carrot_clone/feature/main/main_bottom_navigation_bar.dart';
import 'package:carrot_clone/resource/resource.dart';
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
            child: Icon(CupertinoIcons.text_badge_star),
          ),
          NotificationButton(),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          if (index == 0) {
            return SizedBox(
              height: 64,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: 72,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.lightGrey),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Center(child: Text('동네생활')),
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                itemCount: 15,
              ),
            );
          }
          return Text('$index');
        },
        separatorBuilder: (context, index) {
          if (index == 0) {
            return Container(
              height: 1,
              color: AppColor.lightGrey,
              margin: const EdgeInsets.symmetric(horizontal: 16),
            );
          }
          return Container(height: 8, color: AppColor.grey);
        },
        itemCount: 100,
      ),
    );
  }
}
