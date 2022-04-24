import 'dart:math';

import 'package:carrot_clone/feature/main/main_bottom_navigation_bar.dart';
import 'package:carrot_clone/resource/resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text('나의 당근'),
        ),
        actions: const [
          Icon(CupertinoIcons.settings_solid),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Stack(
                      children: const [
                        CircleAvatar(
                          radius: 32,
                          foregroundImage: NetworkImage(
                              'https://file.mk.co.kr/meet/neds/2021/12/image_readmed_2021_1196959_16401619274892399.jpg'),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: AppColor.white,
                            child: Icon(
                              CupertinoIcons.camera,
                              color: AppColor.grey,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Nickname',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '인헌동 #1234567890 ',
                              style: TextStyle(fontSize: 12, color: AppColor.grey),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: pi,
                      child: const Icon(
                        CupertinoIcons.back,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 52,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.primary, width: 1.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'asset/carrot.png',
                    width: 24,
                  ),
                  const Text(
                    'Pay',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primary,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '0원',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const Text('충전하기'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    _MenuColumn(
                      text: '판매내역',
                      icon: CupertinoIcons.square,
                    ),
                    _MenuColumn(
                      text: '구매내역',
                      icon: CupertinoIcons.shopping_cart,
                    ),
                    _MenuColumn(
                      text: '관심목록',
                      icon: CupertinoIcons.heart,
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 8, color: AppColor.lightGrey),
            const _MenuRow(
              icon: CupertinoIcons.location,
              text: '내 동네 설정',
            ),
            const _MenuRow(
              icon: CupertinoIcons.location_north,
              text: '동네 인증하기',
            ),
            const _MenuRow(
              icon: CupertinoIcons.location_circle,
              text: '키워드 알림',
            ),
            const _MenuRow(
              icon: CupertinoIcons.dot_square,
              text: '관심 카테고리 설정',
            ),
            Container(height: 8, color: AppColor.lightGrey),
            const _MenuRow(
              icon: CupertinoIcons.square_arrow_down,
              text: '모아보기',
            ),
            const _MenuRow(
              icon: CupertinoIcons.book,
              text: '당근가계부',
            ),
            const _MenuRow(
              icon: CupertinoIcons.cloud_upload,
              text: '받은 쿠폰함',
            ),
            const _MenuRow(
              icon: CupertinoIcons.home,
              text: '내 단골 가게',
            ),
            Container(height: 8, color: AppColor.lightGrey),
            const _MenuRow(
              icon: CupertinoIcons.pencil,
              text: '동네생활 글/댓글',
            ),
            const _MenuRow(
              icon: CupertinoIcons.chat_bubble_fill,
              text: '동네 가게 후기',
            ),
            Container(height: 8, color: AppColor.lightGrey),
            const _MenuRow(
              icon: CupertinoIcons.text_aligncenter,
              text: '비즈프로필 만들기',
            ),
            const _MenuRow(
              icon: CupertinoIcons.hourglass,
              text: '동네홍보 글',
            ),
            const _MenuRow(
              icon: CupertinoIcons.news_solid,
              text: '지역광고',
            ),
            Container(height: 8, color: AppColor.lightGrey),
            const _MenuRow(
              icon: CupertinoIcons.mail,
              text: '친구초대',
            ),
            const _MenuRow(
              icon: CupertinoIcons.mic,
              text: '공지사항',
            ),
            const _MenuRow(
              icon: CupertinoIcons.person_add,
              text: '자주 묻는 질문',
            ),
            const _MenuRow(
              icon: CupertinoIcons.settings_solid,
              text: '앱 설정',
            ),
            Container(height: 8, color: AppColor.lightGrey),
          ],
        ),
      ),
    );
  }
}

class _MenuColumn extends StatelessWidget {
  const _MenuColumn({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: AppColor.primary.withOpacity(0.3),
          foregroundColor: AppColor.primary,
          child: Icon(
            icon,
          ),
        ),
        const Spacer(),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _MenuRow extends StatelessWidget {
  const _MenuRow({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
