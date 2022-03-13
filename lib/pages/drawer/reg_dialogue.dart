// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:service_provider/pages/service_dashboard.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/register_screen.dart';
import 'package:service_provider/pages/normalU_dashboard.dart';
import 'package:service_provider/widgets/new_bar.dart';
import 'package:service_provider/widgets/service_nav_bar.dart';

import '../../widgets/normal_bottom_bar.dart';

class RegDialogue extends StatefulWidget {
  const RegDialogue({Key? key}) : super(key: key);

  @override
  _RegDialogueState createState() => _RegDialogueState();
}

class _RegDialogueState extends State<RegDialogue> {
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
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        )),
        child: SizedBox(
          height: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 40,
                centerTitle: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
                automaticallyImplyLeading: false,
                title: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Theme.of(context).primaryColor,
              ),
              body: Container(
                decoration: BoxDecoration(
                    // color: Colors.grey,

                    ),
                // height: 280,
                //width: width / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => NormalBottomBar())));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Normal User"),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ServiceBottomBar())));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Service Provider"),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
