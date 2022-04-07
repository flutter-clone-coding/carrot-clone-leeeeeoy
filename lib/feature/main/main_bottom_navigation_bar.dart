import 'package:carrot_clone/feature/main/bloc/main_page_index_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(3),
        height: 64,
        decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          )),
          boxShadow: [BoxShadow()],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            _BottomTab(
              icon: CupertinoIcons.home,
              curIndex: 0,
              tabTitle: '홈',
            ),
            _BottomTab(
              icon: CupertinoIcons.building_2_fill,
              curIndex: 1,
              tabTitle: '동네생활',
            ),
            _BottomTab(
              icon: CupertinoIcons.location,
              curIndex: 2,
              tabTitle: '내 근처',
            ),
            _BottomTab(
              icon: CupertinoIcons.chat_bubble_2,
              curIndex: 3,
              tabTitle: '채팅',
            ),
            _BottomTab(
              icon: CupertinoIcons.person,
              curIndex: 4,
              tabTitle: '나의 당근',
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomTab extends StatelessWidget {
  const _BottomTab({
    Key? key,
    required this.tabTitle,
    required this.curIndex,
    required this.icon,
  }) : super(key: key);

  final String tabTitle;
  final IconData icon;
  final int curIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () => context.read<MainPageIndexBloc>().add(MainPageIndexEvent.pageChanged(curIndex)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<MainPageIndexBloc, int>(
              builder: (context, state) {
                return Icon(
                  icon,
                  color: state == curIndex ? Colors.orange : Colors.grey,
                );
              },
            ),
            Text(
              tabTitle,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
