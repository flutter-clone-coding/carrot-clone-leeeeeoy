import 'package:carrot_clone/feature/intro/input_phone_number_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  static const routeName = 'IntroPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 3),
          Image.asset(
            'asset/carrot.png',
            width: 150,
          ),
          const SizedBox(height: 16),
          const Text(
            '당신 근처의 당근마켓',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '중고 거래부터 동네 정보까지,\n지금 내 동네를 선택하고 시작해보세요!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Spacer(flex: 2),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('시작하기'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 48, top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('이미 계정이 있나요?'),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, InputPhoneNumberPage.routeName),
                  child: const Text(
                    '로그인',
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
