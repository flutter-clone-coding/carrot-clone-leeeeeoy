import 'package:carrot_clone/resource/resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFloatingButtonDropdown extends StatelessWidget {
  const HomeFloatingButtonDropdown({
    Key? key,
    required this.offset,
  }) : super(key: key);

  final Offset offset;

  @override
  Widget build(BuildContext context) {
    final _menus = ['알바', '과외/클래스', '농수산물', '부동산', '중고차', '내 물건 팔기'];

    return Material(
      color: Colors.black.withOpacity(0.5),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
            ),
          ),
          Positioned(
            left: offset.dx - 156,
            top: offset.dy - 360,
            child: Column(
              children: [
                Container(
                  height: 240,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.white,
                  ),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => Navigator.pop(context),
                      child: SizedBox(
                        height: 48,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                const Icon(CupertinoIcons.car),
                                const SizedBox(width: 16),
                                Text(
                                  _menus[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    itemCount: _menus.length - 1,
                  ),
                ),
                Container(
                  height: 48,
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.only(left: 16),
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.white,
                  ),
                  child: Row(
                    children: [
                      const Icon(CupertinoIcons.car),
                      const SizedBox(width: 16),
                      Text(
                        _menus.last,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: offset.dx - 16,
            top: offset.dy - 60,
            child: Container(
              height: 56,
              margin: const EdgeInsets.only(top: 20),
              width: 56,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(28),
              ),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Center(
                  child: Icon(
                    CupertinoIcons.xmark,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
