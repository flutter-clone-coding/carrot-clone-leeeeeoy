import 'package:carrot_clone/app_const.dart';
import 'package:carrot_clone/feature/main/main_bottom_navigation_bar.dart';
import 'package:carrot_clone/resource/resource.dart';
import 'package:carrot_clone/widget/button/notification_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text('내 근처'),
        ),
        actions: const [
          Icon(CupertinoIcons.pencil_outline),
          SizedBox(width: 12),
          Icon(CupertinoIcons.qrcode),
          SizedBox(width: 4),
          NotificationButton(),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 24, right: 16, left: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 56,
              decoration: BoxDecoration(
                color: AppColor.lightGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: '주변 가게, 알바, 부동산을 찾아보세요',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 64,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => index == 0
                      ? const Center(child: Text('인기'))
                      : Container(
                          width: 72,
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.lightGrey),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(child: Text('키워드 $index')),
                        ),
                  separatorBuilder: (context, index) => const SizedBox(width: 16),
                  itemCount: 10,
                ),
              ),
            ),
            Container(
              height: 1,
              color: AppColor.lightGrey,
              margin: const EdgeInsets.symmetric(horizontal: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: List.generate(
                    8,
                    (index) => Column(
                      children: [
                        const Icon(CupertinoIcons.airplane),
                        const SizedBox(height: 8),
                        Text('카테고리 $index'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(height: 8, color: AppColor.lightGrey),
            const _SubTitle('이웃과 직접 만드는 동네 지도'),
            const SizedBox(height: 300, child: _CustomTabBarView2()),
            Container(height: 8, color: AppColor.lightGrey),
            const _SubTitle('우리 동네 가게 소식'),
            const SizedBox(height: 300, child: _CustomTabBarView1()),
            const _SubTitle('당근머니'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '설치 없이 바로 이용할 수 있는 서비스를 둘러보세요',
                style: TextStyle(color: AppColor.grey),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.lightGrey,
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemCount: 5,
              ),
            ),
            Container(height: 8, color: AppColor.lightGrey),
            const _SubTitle('우리동네 인기쿠폰'),
            Container(height: 8, color: AppColor.lightGrey),
            const _SubTitle('이웃들의 추천가게'),
            Container(height: 8, color: AppColor.lightGrey),
          ],
        ),
      ),
    );
  }
}

class _CustomTabBarView1 extends StatefulWidget {
  const _CustomTabBarView1({Key? key}) : super(key: key);

  @override
  State<_CustomTabBarView1> createState() => _CustomTabBarView1State();
}

class _CustomTabBarView1State extends State<_CustomTabBarView1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DefaultTabController(
        length: 7,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 64,
            child: TabBar(
              isScrollable: true,
              indicatorColor: AppColor.black,
              tabs: List.generate(
                7,
                (index) => Tab(
                  child: Text(
                    'Tab $index',
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: TabBarView(
                  children: List.generate(
                      7,
                      (index) => ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => SizedBox(
                              height: 72,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        AppConst.itemImages[index % 10],
                                        height: 72,
                                        width: 72,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Text('가게이름', style: TextStyle(fontSize: 16)),
                                        Text(
                                          '제목이 들어갑니다 ' * (index % 4 + 1),
                                          style: const TextStyle(fontSize: 16),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          '서초구 방배본동 • $index일 전',
                                          style: const TextStyle(
                                            fontSize: 11,
                                            color: AppColor.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            itemCount: 3,
                            separatorBuilder: (context, index) =>
                                Container(height: 1, color: AppColor.lightGrey),
                          ))))
        ]),
      ),
    );
  }
}

class _CustomTabBarView2 extends StatefulWidget {
  const _CustomTabBarView2({Key? key}) : super(key: key);

  @override
  State<_CustomTabBarView2> createState() => __CustomTabBarView2State();
}

class __CustomTabBarView2State extends State<_CustomTabBarView2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 200,
              child: TabBar(
                indicatorColor: AppColor.black,
                tabs: [
                  Tab(
                    child: Text('동네 맛집', style: TextStyle(color: AppColor.black)),
                  ),
                  Tab(
                    child: Text('겨울간식', style: TextStyle(color: AppColor.black)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    itemCount: 3,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => SizedBox(
                      height: 64,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('제목'),
                          Text('제목'),
                          Text('제목'),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        Container(height: 1, color: AppColor.lightGrey),
                  ),
                  ListView.separated(
                    itemCount: 3,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => SizedBox(
                      height: 64,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('고구마 붕어빵'),
                          Text('호떡'),
                          Text('2022.4.5 업데이트'),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        Container(height: 1, color: AppColor.lightGrey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
