import 'package:carrot_clone/feature/search/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          SearchPage.routeName,
        ),
        child: const Icon(CupertinoIcons.search),
      ),
    );
  }
}
