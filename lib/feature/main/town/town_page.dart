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
        child: const Icon(CupertinoIcons.add),
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
          return SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 24,
                  width: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColor.lightGrey,
                  ),
                  child: const Center(
                    child: Text(
                      '동네질문',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                index % 2 == 0
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: RichText(
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: 'Q. ',
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColor.primary,
                            ),
                            children: [
                              TextSpan(
                                text: '질문 내용입니다. ' * 10,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: AppColor.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          '본문 내용입니다. ' * 20,
                          style: const TextStyle(fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    children: [
                      const Text(
                        'Nickname • 지역',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.grey,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '$index분 전',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColor.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 1, color: AppColor.lightGrey),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.check_mark_circled,
                        color: AppColor.grey,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      index % 2 == 0
                          ? Text('궁금해요 $index')
                          : Text('공감해요 $index'),
                      const SizedBox(width: 24),
                      const Icon(
                        CupertinoIcons.chat_bubble,
                        color: AppColor.grey,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text('답변 ${index * 2}'),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          if (index == 0) {
            return Container(
              height: 1,
              color: AppColor.lightGrey,
              margin: const EdgeInsets.symmetric(horizontal: 16),
            );
          }
          return Container(
            height: 8,
            color: AppColor.lightGrey,
          );
        },
        itemCount: 100,
      ),
    );
  }
}
