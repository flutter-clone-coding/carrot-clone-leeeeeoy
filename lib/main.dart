import 'package:carrot_clone/app.dart';
import 'package:carrot_clone/util/logger/custom_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
    () => runApp(
      const App(),
    ),
    blocObserver: CustomBlocObserver(),
  );
}
