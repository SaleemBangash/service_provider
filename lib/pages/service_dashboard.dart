// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/main.dart';
import 'package:service_provider/widgets/Service_drawer.dart';
import 'package:service_provider/widgets/bottom_bar.dart';

import 'package:service_provider/widgets/my_appbar.dart';
import 'package:service_provider/widgets/text_field.dart';

import '../widgets/normal_drawer.dart';

class ServiceDashboard extends StatefulWidget {
  const ServiceDashboard({Key? key}) : super(key: key);

  @override
  State<ServiceDashboard> createState() => _ServiceDashboardState();
}

class _ServiceDashboardState extends State<ServiceDashboard> {
  bool _hasBeenPressed = false;

  bool _isBeenPressed = false;

  bool _wasBeenPressed = false;
  bool _hadBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Colors.white,
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
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/map1.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: GestureDetector(
                    //         onTap: () => {
                    //           setState(() {
                    //             _isBeenPressed = !_isBeenPressed;
                    //             _hasBeenPressed = false;
                    //             _wasBeenPressed = false;
                    //           })
                    //         },
                    //         child: Container(
                    //           width: sizeConfig!.width(0.22),
                    //           height: sizeConfig!.height(0.04),
                    //           decoration: BoxDecoration(
                    //               color: _isBeenPressed
                    //                   ? Theme.of(context).primaryColor
                    //                   : Color.fromARGB(255, 243, 225, 225),
                    //               borderRadius: BorderRadius.circular(20.0)),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Icon(
                    //                 FontAwesomeIcons.check,
                    //                 size: 15,
                    //               ),
                    //               Text("All")
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: GestureDetector(
                    //         onTap: () => {
                    //           setState(() {
                    //             _wasBeenPressed = !_wasBeenPressed;
                    //             _isBeenPressed = false;
                    //             _hasBeenPressed = false;
                    //           })
                    //         },
                    //         child: Container(
                    //           width: sizeConfig!.width(0.25),
                    //           height: sizeConfig!.height(0.04),
                    //           decoration: BoxDecoration(
                    //               color: _wasBeenPressed
                    //                   ? Theme.of(context).primaryColor
                    //                   : Color.fromARGB(255, 243, 225, 225),
                    //               borderRadius: BorderRadius.circular(20.0)),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Icon(
                    //                 FontAwesomeIcons.check,
                    //                 size: 15,
                    //               ),
                    //               Text("Driver")
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: GestureDetector(
                    //         onTap: () => {
                    //           setState(() {
                    //             _hadBeenPressed = !_hadBeenPressed;
                    //             _isBeenPressed = false;
                    //             _wasBeenPressed = false;
                    //             _hasBeenPressed = false;
                    //           })
                    //         },
                    //         child: Container(
                    //           width: sizeConfig!.width(0.25),
                    //           height: sizeConfig!.height(0.04),
                    //           decoration: BoxDecoration(
                    //               color: _hadBeenPressed
                    //                   ? Theme.of(context).primaryColor
                    //                   : Color.fromARGB(255, 243, 225, 225),
                    //               borderRadius: BorderRadius.circular(20.0)),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Icon(
                    //                 FontAwesomeIcons.check,
                    //                 size: 15,
                    //               ),
                    //               Text("Driver")
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: GestureDetector(
                    //         onTap: () => {
                    //           setState(() {
                    //             _hasBeenPressed = !_hasBeenPressed;
                    //             _isBeenPressed = false;
                    //             _wasBeenPressed = false;
                    //             _hadBeenPressed = false;
                    //           })
                    //         },
                    //         child: Container(
                    //           width: sizeConfig!.width(0.25),
                    //           height: sizeConfig!.height(0.04),
                    //           decoration: BoxDecoration(
                    //               color: _hasBeenPressed
                    //                   ? Theme.of(context).primaryColor
                    //                   : Color.fromARGB(255, 243, 225, 225),
                    //               borderRadius: BorderRadius.circular(20.0)),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Icon(
                    //                 FontAwesomeIcons.check,
                    //                 size: 15,
                    //               ),
                    //               Text("Driver")
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: NormalDrawer(),
      // bottomNavigationBar: BottomBar(),
    );
  }
}
