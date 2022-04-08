import 'dart:math';

import 'package:carrot_clone/app_const.dart';
import 'package:carrot_clone/feature/main/main_bottom_navigation_bar.dart';
import 'package:carrot_clone/resource/resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(CupertinoIcons.add),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 4),
              child: Text('인헌동'),
            ),
            Transform.rotate(
              angle: pi * 3 / 2,
              child: const Icon(CupertinoIcons.back, size: 16),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Icon(CupertinoIcons.search),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Icon(CupertinoIcons.bars),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Icon(CupertinoIcons.bell),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Scrollbar(
        child: ListView.separated(
          padding: const EdgeInsets.only(top: 24),
          itemBuilder: (context, index) => SizedBox(
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        AppConst.itemImages[index % 10],
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 156,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '상품제목이 길면 이렇게 됩니다.' * (index % 2 + 1),
                          style: const TextStyle(fontSize: 16),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '서초구 방배본동 • $index일 전',
                          style: const TextStyle(
                            fontSize: 11,
                            color: AppColor.grey,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${index * 10000}원',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(CupertinoIcons.chat_bubble_2, size: 16),
                            const SizedBox(width: 4),
                            Text('$index'),
                            const SizedBox(width: 8),
                            const Icon(CupertinoIcons.heart, size: 16),
                            const SizedBox(width: 4),
                            Text('$index'),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            color: AppColor.lightGrey,
            height: 1,
          ),
          itemCount: 100,
        ),
      ),
    );
  }
}
