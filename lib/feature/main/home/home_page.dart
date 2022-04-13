import 'dart:math';

import 'package:carrot_clone/app_const.dart';
import 'package:carrot_clone/feature/main/home/widget/home_bottom_sheet.dart';
import 'package:carrot_clone/feature/main/home/widget/home_floating_button_dropdown.dart';
import 'package:carrot_clone/feature/main/main_bottom_navigation_bar.dart';
import 'package:carrot_clone/resource/resource.dart';
import 'package:carrot_clone/util/calculate_offset.dart';
import 'package:carrot_clone/feature/main/home/widget/home_app_bar_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _appBarDropdownKey = GlobalKey();
final _floatingButtonDropdownKey = GlobalKey();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      floatingActionButton: const _HomeFloatingButton(),
      appBar: AppBar(
        title: const _HomeAppBarTitle(),
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                '제목이 들어갑니다 ' * (index % 4 + 1),
                                style: const TextStyle(fontSize: 16),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            index % 3 == 0
                                ? Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: InkWell(
                                      onTap: () {
                                        showCupertinoModalPopup(
                                          context: context,
                                          builder: (_) => const HomeBottomSheet(),
                                        );
                                      },
                                      child: const Icon(
                                        Icons.more_vert,
                                        size: 16,
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
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

class _HomeAppBarTitle extends StatefulWidget {
  const _HomeAppBarTitle({Key? key}) : super(key: key);

  @override
  State<_HomeAppBarTitle> createState() => __HomeAppBarTitleState();
}

class __HomeAppBarTitleState extends State<_HomeAppBarTitle> {
  bool _isPush = false;
  double _turns = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      key: _appBarDropdownKey,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 4),
          child: Text('인헌동'),
        ),
        InkWell(
          onTap: () async {
            setState(() {
              _turns += 1;
              _isPush = true;
            });
            await Navigator.push(
              context,
              PageRouteBuilder(
                opaque: false,
                pageBuilder: (context, animation, secondaryAnimation) => HomeAppBarDropdown(
                  offset: calculateOffset(_appBarDropdownKey),
                ),
                transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
            );
            setState(() => _isPush = false);
          },
          child: AnimatedRotation(
            turns: _isPush ? _turns - 0.5 : _turns,
            duration: const Duration(milliseconds: 200),
            child: Transform.rotate(
              angle: pi * 3 / 2,
              child: const Icon(CupertinoIcons.back, size: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class _HomeFloatingButton extends StatefulWidget {
  const _HomeFloatingButton({Key? key}) : super(key: key);

  @override
  State<_HomeFloatingButton> createState() => __HomeFloatingButtonState();
}

class __HomeFloatingButtonState extends State<_HomeFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            opaque: false,
            pageBuilder: (context, animation, secondaryAnimation) => HomeFloatingButtonDropdown(
              offset: calculateOffset(_floatingButtonDropdownKey),
            ),
            transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        );
      },
      child: Icon(
        CupertinoIcons.add,
        key: _floatingButtonDropdownKey,
      ),
    );
  }
}
