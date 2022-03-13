// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/main.dart';
import 'package:service_provider/pages/banner_ad.dart';
import 'package:service_provider/pages/story.dart';
import 'package:service_provider/story_view.dart';
import 'package:service_provider/widgets/bottom_bar.dart';
import 'package:service_provider/widgets/drawer.dart';
import 'package:service_provider/widgets/my_appbar.dart';
// import 'package:service_provider/widgets/nav_bar.dart';
import 'package:service_provider/widgets/new_bar.dart';
import 'package:service_provider/widgets/normal_bottom_bar.dart';
import 'package:service_provider/widgets/story.dart';
import 'package:service_provider/widgets/text_field.dart';

// import '../widgets/nav_bar.dart';
// import '../widgets/nav_bar.dart';
// import 'package:story_view/story_view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _hasBeenPressed = false;

  bool _isBeenPressed = false;

  bool _wasBeenPressed = false;
  bool _hadBeenPressed = false;
  // int _selectedIndex = 0;
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Colors.transparent,
      data: SizedBox(
        height: 30,
        child: MyTextField(
          contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
          hintText: "Search Here",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          suffixIcon: Icon(Icons.search_outlined),
        ),
      ),
      leading: Icon(
        FontAwesomeIcons.bars,
        color: Theme.of(context).primaryColor,
      ),
      drawer: DrawerPage(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/map1.jpg"),
                  fit: BoxFit.fill,
                )),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddStory()));
                          },
                          child: Story()),
                      SizedBox(
                        width: 15,
                      ),
                      Story(),
                      SizedBox(
                        width: 15,
                      ),
                      Story(),
                      SizedBox(
                        width: 15,
                      ),
                      Story(),
                      SizedBox(
                        width: 15,
                      ),
                      Story(),
                      SizedBox(
                        width: 15,
                      ),
                      Story(),
                      SizedBox(
                        width: 15,
                      ),
                      Story(),
                      SizedBox(
                        width: 15,
                      ),
                      Story(),
                      SizedBox(
                        width: 15,
                      ),
                      Story(),
                      SizedBox(
                        width: 15,
                      ),
                      Story(),
                    ],
                  ),
                ),
                // Container(
                //   child: SingleChildScrollView(
                //     scrollDirection: Axis.horizontal,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: GestureDetector(
                //             onTap: () => {
                //               setState(() {
                //                 _wasBeenPressed = !_wasBeenPressed;
                //                 _isBeenPressed = false;
                //                 _hadBeenPressed = false;
                //                 _hasBeenPressed = false;
                //               })
                //             },
                //             child: Container(
                //               width: sizeConfig!.width(0.22),
                //               height: sizeConfig!.height(0.04),
                //               decoration: BoxDecoration(
                //                   color: _wasBeenPressed
                //                       ? Theme.of(context).primaryColor
                //                       : Color.fromARGB(255, 243, 225, 225),
                //                   borderRadius: BorderRadius.circular(20.0)),
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Icon(
                //                     FontAwesomeIcons.check,
                //                     size: 15,
                //                   ),
                //                   Text("All")
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: GestureDetector(
                //             onTap: () => {
                //               setState(() {
                //                 _hadBeenPressed = !_hadBeenPressed;
                //                 _isBeenPressed = false;
                //                 _wasBeenPressed = false;
                //                 _hasBeenPressed = false;
                //               })
                //             },
                //             child: Container(
                //               width: sizeConfig!.width(0.25),
                //               height: sizeConfig!.height(0.04),
                //               decoration: BoxDecoration(
                //                   color: _hadBeenPressed
                //                       ? Theme.of(context).primaryColor
                //                       : Color.fromARGB(255, 243, 225, 225),
                //                   borderRadius: BorderRadius.circular(20.0)),
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Icon(
                //                     FontAwesomeIcons.check,
                //                     size: 15,
                //                   ),
                //                   Text("Driver")
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: GestureDetector(
                //             onTap: () => {
                //               setState(() {
                //                 _isBeenPressed = !_isBeenPressed;
                //                 _hasBeenPressed = false;
                //                 _wasBeenPressed = false;
                //                 _hadBeenPressed = false;
                //               })
                //             },
                //             child: Container(
                //               width: sizeConfig!.width(0.25),
                //               height: sizeConfig!.height(0.04),
                //               decoration: BoxDecoration(
                //                   color: _isBeenPressed
                //                       ? Theme.of(context).primaryColor
                //                       : Color.fromARGB(255, 243, 225, 225),
                //                   borderRadius: BorderRadius.circular(20.0)),
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Icon(
                //                     FontAwesomeIcons.check,
                //                     size: 15,
                //                   ),
                //                   Text("Driver")
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: GestureDetector(
                //             // 3
                //             onTap: () => {
                //               setState(() {
                //                 _hasBeenPressed = !_hasBeenPressed;
                //                 _isBeenPressed = false;
                //                 _wasBeenPressed = false;
                //                 _hadBeenPressed = false;
                //               })
                //             },
                //             child: Container(
                //               width: sizeConfig!.width(0.25),
                //               height: sizeConfig!.height(0.04),
                //               decoration: BoxDecoration(
                //                   color: _hasBeenPressed
                //                       ? Theme.of(context).primaryColor
                //                       : Color.fromARGB(255, 243, 225, 225),
                //                   borderRadius: BorderRadius.circular(20.0)),
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Icon(
                //                     FontAwesomeIcons.check,
                //                     size: 15,
                //                   ),
                //                   Text("Driver")
                //                 ],
                //               ),
                //             ),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Container(
                //       width: double.infinity,
                //       height: 39,
                //       decoration: BoxDecoration(color: Colors.grey),
                //       child: Text(
                //         "Dynamic Border",
                //         textAlign: TextAlign.center,
                //       )),
                // )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BannerAd()));
              }),
              child: Container(
                  width: double.infinity,
                  height: 69,
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Center(
                    child: Text(
                      "Dynamic Banner",
                      style: Theme.of(context).textTheme.bodyText2,
                      // textAlign: TextAlign.center,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
