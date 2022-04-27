import 'package:carrot_clone/resource/resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  static const routeName = 'SearchPage';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back),
          ),
          title: Container(
            height: 40,
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.lightGrey,
            ),
            child: TextFormField(
              controller: _controller,
              autofocus: true,
              maxLength: 10,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                counterText: '',
                hintText: "'인헌동' 근처에서 검색",
                suffix: InkWell(
                  onTap: _controller.clear,
                  child: const CircleAvatar(
                    backgroundColor: AppColor.grey,
                    radius: 8,
                    child: Icon(
                      CupertinoIcons.xmark,
                      color: AppColor.white,
                      size: 10,
                    ),
                  ),
                ),
              ),
              cursorColor: AppColor.primary,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '이웃들이 많이 찾고 있어요!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
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
                      child: Center(child: Text('키워드 $index')),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(width: 16),
                    itemCount: 10,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '최근검색어',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('모두 지우기'),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(top: 32, right: 16, left: 16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 40,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('최근검색어 $index'),
                        const Icon(
                          CupertinoIcons.xmark,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              KeyboardVisibilityBuilder(
                builder: (context, isShow) => isShow
                    ? SafeArea(
                        top: false,
                        child: Container(
                          height: 40,
                          padding: const EdgeInsets.only(right: 16),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: AppColor.lightGrey,
                              ),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () => FocusScope.of(context).unfocus(),
                              child: const Text(
                                '완료',
                                style: TextStyle(
                                  color: AppColor.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
