import 'package:carrot_clone/app_const.dart';
import 'package:carrot_clone/feature/main/main_bottom_navigation_bar.dart';
import 'package:carrot_clone/resource/resource.dart';
import 'package:carrot_clone/widget/button/notification_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text('채팅'),
        ),
        actions: const [
          Icon(CupertinoIcons.qrcode),
          SizedBox(width: 4),
          NotificationButton(),
          SizedBox(width: 16),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => Slidable(
          key: ValueKey(index),
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: AppColor.primary.withOpacity(0.8),
                foregroundColor: AppColor.white,
                icon: CupertinoIcons.star,
              ),
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: AppColor.primary,
                foregroundColor: AppColor.white,
                icon: CupertinoIcons.bell_fill,
              ),
            ],
          ),
          endActionPane: ActionPane(
            extentRatio: 0.2,
            motion: const ScrollMotion(),
            dismissible: DismissiblePane(
              key: ValueKey(index),
              dismissThreshold: 0.5,
              onDismissed: () {},
              closeOnCancel: true,
              confirmDismiss: () async {
                return await showCupertinoDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              Text('삭제하시겠습니까'),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () => Navigator.pop(context, true),
                                    child: Text('삭제'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('아니유'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) ??
                    false;
              },
            ),
            children: [
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: Colors.red,
                foregroundColor: AppColor.white,
                label: '나가기',
              ),
            ],
          ),
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    foregroundImage: NetworkImage(
                        'https://cdn.woman.chosun.com/news/photo/202112/92322_66786_914.jpg'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Nickname',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '지역 • $index분 전',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '마지막 채팅이 들어갑니다 ' * (index % 4 + 1),
                          style: const TextStyle(fontSize: 16),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      AppConst.itemImages[index % 10],
                      height: 64,
                      width: 64,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => Container(height: 1, color: AppColor.lightGrey),
        itemCount: 100,
      ),
    );
  }
}
