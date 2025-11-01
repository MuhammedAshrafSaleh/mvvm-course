import 'package:flutter/material.dart';
import 'package:mvvm_course/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // Named Constructor
  MyApp._internel();

  static final MyApp _instance = MyApp._internel();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: getAppTheme());
  }
}
