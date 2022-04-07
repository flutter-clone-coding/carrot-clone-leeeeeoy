import 'package:carrot_clone/feature/main/bloc/main_page_index_bloc.dart';
import 'package:carrot_clone/feature/main/chat/chat_page.dart';
import 'package:carrot_clone/feature/main/home/home_page.dart';
import 'package:carrot_clone/feature/main/location/location_page.dart';
import 'package:carrot_clone/feature/main/profile/profile_page.dart';
import 'package:carrot_clone/feature/main/town/town_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const routeName = 'MainPage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;
  final pages = const [
    HomePage(),
    TownPage(),
    LocationPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageIndexBloc, int>(
      builder: (context, state) => pages[state],
    );
  }
}
