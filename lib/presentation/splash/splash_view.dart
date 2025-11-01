import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvm_course/presentation/resources/assets_manager.dart';
import 'package:mvvm_course/presentation/resources/color_manager.dart';
import 'package:mvvm_course/presentation/resources/constant_manager.dart';
import 'package:mvvm_course/presentation/resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDeley() {
    _timer = Timer(const Duration(seconds: ConstantManager.delay), _goNext);
  }

  _goNext() {
    Navigator.popAndPushNamed(context, Routes.onBoarding);
  }

  @override
  void initState() {
    super.initState();
    _startDeley();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Image(image: AssetImage(ImageAssets.logo))),
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }
}
