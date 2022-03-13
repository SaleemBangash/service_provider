// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/main.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/reg_otp.dart';
import 'package:service_provider/widgets/my_appbar.dart';
import 'package:service_provider/widgets/second_button.dart';
import 'package:service_provider/widgets/text_field.dart';

import '../utils/size_config.dart';
import 'dashboard.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  // @override
  // void didChangeDependencies() {
  //   sizeConfig = SizeConfig.init(context);
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(FontAwesomeIcons.globe),
          )
        ],
        leading: GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            }),
            child: Icon(Icons.arrow_back_ios)),
        data: Text(
          "Register",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        body: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Register",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter Mobile Number",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: MyTextField(
                        hintText: "+xxxxxxxxx",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        // label: Text("Enter Mobile Number"),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        width: sizeConfig!.width(0.8),
                        height: sizeConfig!.height(0.06),
                        child: MySecondButton(
                          title: ("Register"),
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegOtp()));
                          }),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Have an account?   "),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegScreen()));
                              },
                              child: GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                }),
                                child: const Text(
                                  " Login ",
                                  style: TextStyle(
                                      color: Color(0xff55a9ff),
                                      decoration: TextDecoration.underline),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
