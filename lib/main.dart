// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/splash_screen.dart';
import 'package:service_provider/widgets/new_bar.dart';

import 'utils/app_theme.dart';
import 'utils/size_config.dart';

SizeConfig? sizeConfig;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.data(),
      home: SplashScreen(),
    );
  }
}
