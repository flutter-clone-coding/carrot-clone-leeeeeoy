import 'package:carrot_clone/resource/resource.dart';
import 'package:flutter/cupertino.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      cancelButton: CupertinoActionSheetAction(
        child: const Text(
          '취소',
          style: TextStyle(
            color: AppColor.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        CupertinoActionSheetAction(
          child: const Text(
            '이 광고 그만보기',
            style: TextStyle(color: AppColor.blue),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        CupertinoActionSheetAction(
          child: const Text(
            '신고하기',
            style: TextStyle(color: AppColor.red),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
