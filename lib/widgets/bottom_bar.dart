// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/pages/dashboard.dart';
import 'package:service_provider/pages/exit_dialogue.dart';
import 'package:service_provider/pages/hide_dialogue.dart';
import 'package:service_provider/pages/service_dashboard.dart';
import 'package:service_provider/pages/drawer/chat.dart';
import 'package:service_provider/pages/gallery.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/new_chat.dart';
import 'package:service_provider/pages/register_screen.dart';

import '../main.dart';
import 'second_button.dart';

class BottomBar extends StatefulWidget {
  // final Widget body;
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
  // int index = 0;
  // late final Widget? body;
  int _selectedIndex = 0;
  final List<Widget> screens = [
    Dashboard(),
    LoginScreen(),
    LoginScreen(),
    HideDialogue(),
    ExitDialogue()
    //Center(child: Text("Settings")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // if (index == 4) {
      //   _showDialogue() => Dialog(
      //         alignment: Alignment.center,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(30.0),
      //           topRight: Radius.circular(30.0),
      //           bottomRight: Radius.circular(30.0),
      //           bottomLeft: Radius.circular(30.0),
      //         )),
      //         child: SizedBox(
      //           height: 200,
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.only(
      //               topLeft: Radius.circular(30),
      //               topRight: Radius.circular(30),
      //               bottomRight: Radius.circular(30.0),
      //               bottomLeft: Radius.circular(30.0),
      //             ),
      //             child: Scaffold(
      //               // appBar: AppBar(
      //               //   shape: RoundedRectangleBorder(
      //               //       borderRadius: BorderRadius.only(
      //               //           topLeft: Radius.circular(10.0),
      //               //           topRight: Radius.circular(10.0))),
      //               //   automaticallyImplyLeading: false,
      //               //   centerTitle: false,
      //               //   title: Text(
      //               //     "ExitApp?",
      //               //     style: TextStyle(color: Colors.white),
      //               //   ),
      //               //   backgroundColor: Theme.of(context).primaryColor,
      //               // ),
      //               body: ClipRRect(
      //                 borderRadius: BorderRadius.only(
      //                     topLeft: Radius.circular(50),
      //                     topRight: Radius.circular(50)),
      //                 child: Container(
      //                   decoration: BoxDecoration(
      //                       // color: Colors.grey,

      //                       ),
      //                   height: 200,
      //                   //width: width / 3,
      //                   child: Padding(
      //                     padding: const EdgeInsets.all(12.0),
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       crossAxisAlignment: CrossAxisAlignment.center,
      //                       children: [
      //                         // Container(
      //                         //   width: 600,
      //                         //   height: 70,
      //                         //   decoration:
      //                         //       BoxDecoration(color: Theme.of(context).primaryColor),
      //                         //   child: Row(
      //                         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         //     children: [
      //                         //       Padding(
      //                         //         padding: const EdgeInsets.only(left: 40),
      //                         //         child: Text(
      //                         //           "Change Language",
      //                         //           style: TextStyle(
      //                         //               fontSize: 20, fontWeight: FontWeight.bold),
      //                         //         ),
      //                         //       ),
      //                         //       IconButton(
      //                         //         icon: Icon(
      //                         //           Icons.close,
      //                         //         ),
      //                         //         iconSize: 30,
      //                         //         color: Colors.black,
      //                         //         splashColor: Colors.purple,
      //                         //         onPressed: () => Navigator.push(
      //                         //             context,
      //                         //             MaterialPageRoute(
      //                         //                 builder: (context) => LoginScreen())),
      //                         //       ),
      //                         //     ],
      //                         //   ),
      //                         // ),
      //                         Text("Do you want to hide your profile?"),
      //                         SizedBox(
      //                           height: 20,
      //                         ),

      //                         Padding(
      //                           padding: const EdgeInsets.only(right: 30),
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.end,
      //                             children: [
      //                               GestureDetector(
      //                                 onTap: (() {
      //                                   Navigator.push(
      //                                       context,
      //                                       MaterialPageRoute(
      //                                           builder: (context) =>
      //                                               LoginScreen()));
      //                                 }),
      //                                 child: Padding(
      //                                   padding:
      //                                       const EdgeInsets.only(left: 20),
      //                                   child: Container(
      //                                       decoration: BoxDecoration(
      //                                           color: Colors.grey,
      //                                           borderRadius:
      //                                               BorderRadius.circular(
      //                                                   10.0)),
      //                                       width: sizeConfig!.width(0.2),
      //                                       height: sizeConfig!.height(0.04),
      //                                       child: Center(
      //                                           child: Text(
      //                                         "Yes",
      //                                         style: TextStyle(
      //                                             fontWeight: FontWeight.bold,
      //                                             color: Colors.white),
      //                                       ))),
      //                                 ),
      //                               ),
      //                               SizedBox(
      //                                 width: 10,
      //                               ),
      //                               Container(
      //                                   width: sizeConfig!.width(0.2),
      //                                   height: sizeConfig!.height(0.04),
      //                                   child: MySecondButton(
      //                                     borderRadius:
      //                                         BorderRadius.circular(10),
      //                                     title: ("No"),
      //                                     onTap: (() {
      //                                       Navigator.push(
      //                                           context,
      //                                           MaterialPageRoute(
      //                                               builder: (context) =>
      //                                                   Dashboard()));
      //                                     }),
      //                                   )),
      //                             ],
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       );
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: widget.body,
      body: Center(
        child: screens[_selectedIndex], //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        // key: globalKey,
        type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        backgroundColor: Colors.white70,

        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 0.0),
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 23),
        unselectedIconTheme: const IconThemeData(size: 21),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        // selectedLabelStyle: Colors.accents,
        // unselectedLabelStyle: textTheme.caption,
        // onTap: _onItemTapped,
        // currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 22,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
              child: Icon(
                FontAwesomeIcons.images,
                size: 22,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
              child: Icon(
                FontAwesomeIcons.commentDots,
                size: 22,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.rotate_left_outlined,
              size: 22,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExitDialogue())),
                child: Image.asset("assets/closed.png")),
          )
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.black,
        // selectedFontSize: 20,

        onTap: _onItemTapped,
      ),
    );
  }

  _showDialogue() => Dialog(
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        )),
        child: SizedBox(
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
            child: Scaffold(
              // appBar: AppBar(
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(10.0),
              //           topRight: Radius.circular(10.0))),
              //   automaticallyImplyLeading: false,
              //   centerTitle: false,
              //   title: Text(
              //     "ExitApp?",
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   backgroundColor: Theme.of(context).primaryColor,
              // ),
              body: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.grey,

                      ),
                  height: 200,
                  //width: width / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        Text("Do you want to hide your profile?"),
                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                }),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      width: sizeConfig!.width(0.2),
                                      height: sizeConfig!.height(0.04),
                                      child: Center(
                                          child: Text(
                                        "Yes",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ))),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: sizeConfig!.width(0.2),
                                  height: sizeConfig!.height(0.04),
                                  child: MySecondButton(
                                    borderRadius: BorderRadius.circular(10),
                                    title: ("No"),
                                    onTap: (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Dashboard()));
                                    }),
                                  )),
                            ],
                          ),
                        )
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
