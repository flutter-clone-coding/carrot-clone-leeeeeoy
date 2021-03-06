import 'package:carrot_clone/feature/intro/bloc/login_code_bloc.dart';
import 'package:carrot_clone/feature/intro/bloc/login_phone_number_bloc.dart';
import 'package:carrot_clone/feature/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
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
                      '???????????????!\n????????? ????????? ?????????????????????.',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                buildWhen: (previous, current) => current is LoginPhoneNumberSucceed,
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
                      '????????? ????????? ???????????? ???????????? ??????????????? ???????????? ?????????.',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  );
                },
              ),
              BlocBuilder<LoginPhoneNumberBloc, LoginPhoneNumberState>(
                buildWhen: (pre, next) => next is LoginPhoneNumberSucceed,
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
                  maxLength: 11,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    hintText: '????????? ?????? (- ?????? ????????? ??????)',
                    counterText: '',
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
                          '???????????? ?????? ??????',
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
                            ),
                            onPressed: _isValid
                                ? () =>
                                    context.read<LoginPhoneNumberBloc>().add(const LoginPhoneNumberEvent.submitted())
                                : null,
                            child: const Text('???????????? ??????'),
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
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        onChanged: (value) => context.read<LoginCodeBloc>().add(LoginCodeEvent.changed(value)),
                        decoration: const InputDecoration(
                          hintText: '???????????? ??????',
                          counterText: '',
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
                        '?????? ???????????? ???????????? ???????????? ?????????!',
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
                            onPressed: _isValid
                                ? () => Navigator.pushNamedAndRemoveUntil(
                                      context,
                                      MainPage.routeName,
                                      (route) => false,
                                    )
                                : null,
                            child: const Text('???????????? ??????'),
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
                        const Text('????????? ????????? ???????????????????'),
                        const SizedBox(width: 8),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            '???????????? ?????? ??????',
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
