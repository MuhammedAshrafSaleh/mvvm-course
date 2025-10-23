import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}
