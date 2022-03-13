// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/main.dart';
import 'package:service_provider/pages/dashboard.dart';
// import 'package:service_provider/pages/service_dashboard.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:service_provider/pages/register_screen.dart';
import 'package:service_provider/widgets/bottom_bar.dart';
import 'package:service_provider/widgets/my_appbar.dart';
import 'package:service_provider/widgets/second_button.dart';
import 'package:service_provider/widgets/text_field.dart';

import '../utils/size_config.dart';
import 'login_otp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  MaterialPageRoute(builder: (context) => BottomBar()));
            }),
            child: Icon(Icons.arrow_back_ios)),
        data: Text(
          "Login",
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
                      "Login",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: MyTextField(
                        hintText: "Enter Mobile Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        // width: double.infinity,
                        width: sizeConfig!.width(0.8),
                        height: sizeConfig!.height(0.06),
                        child: MySecondButton(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginOtp()));
                            }),
                            title: ("Login"))),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?   "),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                              child: GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RegScreen()));
                                }),
                                child: const Text(
                                  " Register ",
                                  style: TextStyle(
                                      color: Color(0xff55a9ff),
                                      decoration: TextDecoration.underline),
                                ),
                              )),
                        ],
                      ),
                    ),
                    // CarouselSlider(
                    //   items: [
                    //     //1st Image of Slider
                    //     Container(
                    //       margin: EdgeInsets.all(6.0),
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(8.0),
                    //         image: DecorationImage(
                    //           image: AssetImage("assets/men.png"),
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //     ),

                    //     //2nd Image of Slider
                    //     Container(
                    //       margin: EdgeInsets.all(6.0),
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(8.0),
                    //         image: DecorationImage(
                    //           image: AssetImage("assets/men.png"),
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //     ),

                    //     //3rd Image of Slider
                    //     // Container(
                    //     //   margin: EdgeInsets.all(6.0),
                    //     //   decoration: BoxDecoration(
                    //     //     borderRadius: BorderRadius.circular(8.0),
                    //     //     image: DecorationImage(
                    //     //       image: AssetImage("assets/men.png"),
                    //     //       fit: BoxFit.cover,
                    //     //     ),
                    //     //   ),
                    //     // ),

                    //     //4th Image of Slider
                    //     // Container(
                    //     //   margin: EdgeInsets.all(6.0),
                    //     //   decoration: BoxDecoration(
                    //     //     borderRadius: BorderRadius.circular(8.0),
                    //     //     image: DecorationImage(
                    //     //       image: AssetImage("assets/men.png"),
                    //     //       fit: BoxFit.cover,
                    //     //     ),
                    //     //   ),
                    //     // ),

                    //     //5th Image of Slider
                    //     // Container(
                    //     //   margin: EdgeInsets.all(6.0),
                    //     //   decoration: BoxDecoration(
                    //     //     borderRadius: BorderRadius.circular(8.0),
                    //     //     image: DecorationImage(
                    //     //       image: AssetImage("assets/men.png"),
                    //     //       fit: BoxFit.cover,
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //   ],

                    //   //Slider Container properties
                    //   options: CarouselOptions(
                    //     height: 120.0,
                    //     // enlargeCenterPage: true,
                    //     autoPlay: true,
                    //     aspectRatio: 10 / 5,
                    //     autoPlayCurve: Curves.fastOutSlowIn,
                    //     enableInfiniteScroll: true,
                    //     autoPlayAnimationDuration: Duration(milliseconds: 800),
                    //     viewportFraction: 0.5,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
