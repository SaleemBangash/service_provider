// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:service_provider/pages/dashboard.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/widgets/bottom_bar.dart';
import 'package:service_provider/widgets/new_bar.dart';

import '../main.dart';
import '../utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _load();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Service Provider",
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              )
            ],
          ),
        ));
  }

  _load() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => BottomBar()));
    });
  }
}
