import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:workout_manager/core/constants/constants.dart';
import 'package:workout_manager/state/workout_manager_cubit/workout_manager_cubit.dart';
import 'package:workout_manager/ui/home.dart';
import 'package:workout_manager/ui/utils/utils.dart';

import 'core/constants/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    setStatusBarColors();
    return BlocProvider(
      create: (context) => WorkoutManagerCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Strings.appTitle,
          theme: ThemeData(
            fontFamily: 'Avenir',
            primarySwatch: AppColors.primarySwatch,
            scaffoldBackgroundColor: AppColors.darkPrimary,
          ),
          home: AnimatedSplashScreen(
            backgroundColor: AppColors.darkPrimary,
            centered: true,
            splash: 'assets/magic_white.png',
            nextScreen: const HomePage(),
            curve: Curves.fastOutSlowIn,
            splashIconSize: 200,
            duration: 1000,
            splashTransition: SplashTransition.sizeTransition,
          )),
    );
  }
}
