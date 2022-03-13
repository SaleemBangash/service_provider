// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:service_provider/pages/service_dashboard.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/register_screen.dart';
import 'package:service_provider/pages/normalU_dashboard.dart';

class CallDialogue extends StatefulWidget {
  const CallDialogue({Key? key}) : super(key: key);

  @override
  _CallDialogueState createState() => _CallDialogueState();
}

class _CallDialogueState extends State<CallDialogue> {
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
          height: 150,
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
                automaticallyImplyLeading: false,
                centerTitle: false,
                title: Padding(
                  padding: const EdgeInsets.only(),
                  child: Text(
                    "Choose Communication Way",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                backgroundColor: Theme.of(context).primaryColor,
              ),
              body: Container(
                decoration: BoxDecoration(
                    // color: Colors.grey,

                    ),
                height: 280,
                //width: width / 3,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          NormalUDashboard())));
                            },
                            child: Text("call")),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          ServiceDashboard())));
                            },
                            child: Text("Whatsapp")),
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
