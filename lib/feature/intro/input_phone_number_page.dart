import 'package:flutter/material.dart';

class InputPhoneNumberPage extends StatefulWidget {
  const InputPhoneNumberPage({Key? key}) : super(key: key);

  static const routeName = 'InputPhoneNumberPage';

  @override
  State<InputPhoneNumberPage> createState() => _InputPhoneNumberPageState();
}

class _InputPhoneNumberPageState extends State<InputPhoneNumberPage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '안녕하세요!\n휴대폰 번호로 로그인해주세요.',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                '휴대폰 번호는 안전하게 보관되며 이웃들에게 공개되지 않아요.',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '휴대폰 번호 (- 없이 숫자만 입력)',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.orange,
                  ),
                  onPressed: () {},
                  child: const Text(
                    '인증문자 받기',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('휴대폰 번호가 변경되었나요?'),
                  const SizedBox(width: 8),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, InputPhoneNumberPage.routeName),
                    child: const Text(
                      '이메일로 계정 찾기',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
