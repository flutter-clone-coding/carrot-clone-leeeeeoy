import 'package:carrot_clone/feature/intro/bloc/login_code_bloc.dart';
import 'package:carrot_clone/feature/intro/bloc/login_phone_number_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputPhoneNumberPage extends StatelessWidget {
  const InputPhoneNumberPage({Key? key}) : super(key: key);

  static const routeName = 'InputPhoneNumberPage';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginPhoneNumberBloc()),
        BlocProvider(create: (context) => LoginCodeBloc()),
      ],
      child: const _InputPhoneNumberScreen(),
    );
  }
}

class _InputPhoneNumberScreen extends StatefulWidget {
  const _InputPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<_InputPhoneNumberScreen> createState() => _InputPhoneNumberScreenState();
}

class _InputPhoneNumberScreenState extends State<_InputPhoneNumberScreen> {
  final _phoneNumberController = TextEditingController();
  final _codeController = TextEditingController();

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
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    succeed: () => const SizedBox(),
                    orElse: () => const Text(
                      '안녕하세요!\n휴대폰 번호로 로그인해주세요.',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                builder: (context, state) {
                  return SizedBox(
                    height: state.maybeWhen(
                      succeed: () => 0,
                      orElse: () => 12,
                    ),
                  );
                },
              ),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    succeed: () => const SizedBox(),
                    orElse: () => const Text(
                      '휴대폰 번호는 안전하게 보관되며 이웃들에게 공개되지 않아요.',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  );
                },
              ),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                builder: (context, state) {
                  return SizedBox(
                    height: state.maybeWhen(
                      succeed: () => 0,
                      orElse: () => 16,
                    ),
                  );
                },
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  controller: _phoneNumberController,
                  onChanged: (value) => context.read<LoginPhoneNumberBloc>().add(LoginPhoneNumberEvent.changed(value)),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '휴대폰 번호 (- 없이 숫자만 입력)',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    succeed: () => SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.grey),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          elevation: MaterialStateProperty.all(0),
                        ),
                        onPressed: () {},
                        child: const Text(
                          '인증문자 다시 받기',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    orElse: () => SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                        builder: (context, state) {
                          bool _isValid = false;
                          _isValid = state.maybeWhen(
                            validationChecked: (isValid) => _isValid = isValid,
                            orElse: () => _isValid,
                          );
                          return ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey[300];
                                } else {
                                  return Colors.grey;
                                }
                              }),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(0),
                            ),
                            onPressed: _isValid
                                ? () =>
                                    context.read<LoginPhoneNumberBloc>().add(const LoginPhoneNumberEvent.submitted())
                                : null,
                            child: const Text(
                              '인증문자 받기',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    succeed: () => Container(
                      height: 50,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        controller: _codeController,
                        onChanged: (value) => context.read<LoginCodeBloc>().add(LoginCodeEvent.changed(value)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '인증번호 입력',
                        ),
                      ),
                    ),
                    orElse: () => const SizedBox(),
                  );
                },
              ),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    succeed: () => const Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 16),
                      child: Text(
                        '어떤 경우에도 타인에게 공유하지 마세요!',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    orElse: () => const SizedBox(),
                  );
                },
              ),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    succeed: () => SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: BlocBuilder<LoginCodeBloc, LoginCodeState>(
                        builder: (context, state) {
                          bool _isValid = false;
                          _isValid = state.maybeWhen(
                            validationChecked: (isValid) => _isValid = isValid,
                            orElse: () => _isValid,
                          );
                          return ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey[300];
                                } else {
                                  return Colors.orange;
                                }
                              }),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(0),
                            ),
                            onPressed: _isValid ? () {} : null,
                            child: const Text(
                              '인증번호 확인',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    orElse: () => const SizedBox(),
                  );
                },
              ),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    succeed: () => const SizedBox(),
                    orElse: () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('휴대폰 번호가 변경되었나요?'),
                        const SizedBox(width: 8),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            '이메일로 계정 찾기',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
