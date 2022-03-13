// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/normalU_dashboard.dart';
import 'package:service_provider/pages/register_screen.dart';
import 'package:service_provider/widgets/normal_drawer.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  var iChecked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0))),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Colors.grey,
      body: Dialog(
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        )),
        child: SizedBox(
          height: 210,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.close,
                    ),
                    iconSize: 30,
                    color: Colors.black,
                    splashColor: Colors.purple,
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NormalUDashboard())),
                  ),
                ],
                title: Text(
                  "Change Language",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Theme.of(context).primaryColor,
              ),
              body: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.grey,

                      ),
                  height: 280,
                  //width: width / 3,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container(
                      //   width: 600,
                      //   height: 70,
                      //   decoration:
                      //       BoxDecoration(color: Theme.of(context).primaryColor),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.only(left: 40),
                      //         child: Text(
                      //           "Change Language",
                      //           style: TextStyle(
                      //               fontSize: 20, fontWeight: FontWeight.bold),
                      //         ),
                      //       ),
                      //       IconButton(
                      //         icon: Icon(
                      //           Icons.close,
                      //         ),
                      //         iconSize: 30,
                      //         color: Colors.black,
                      //         splashColor: Colors.purple,
                      //         onPressed: () => Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (context) => LoginScreen())),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/usa.png",
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("English")
                              ],
                            ),
                            Checkbox(
                              checkColor: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                  onChecked = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/usa.png",
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Arabic")
                              ],
                            ),
                            Radio(
                              value: onChecked,
                              groupValue: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  onChecked = value!;
                                  isChecked = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
