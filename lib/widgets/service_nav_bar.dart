// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/pages/exit_dialogue.dart';
import 'package:service_provider/pages/service_dashboard.dart';
import 'package:service_provider/pages/drawer/chat.dart';
import 'package:service_provider/pages/gallery.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/new_chat.dart';
import 'package:service_provider/pages/register_screen.dart';

import '../pages/hide_dialogue.dart';

class ServiceBottomBar extends StatefulWidget {
  // final Widget body;
  const ServiceBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _ServiceBottomBarState createState() => _ServiceBottomBarState();
}

class _ServiceBottomBarState extends State<ServiceBottomBar> {
  // GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
  // int index = 0;
  // late final Widget? body;
  int _selectedIndex = 0;
  final List<Widget> screens = [
    ServiceDashboard(),

    Gallery(),
    NewChat(),
    HideDialogue(),
    ExitDialogue()
    //Center(child: Text("Settings")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex), //New
      // ),
      bottomNavigationBar: BottomNavigationBar(
        // key: globalKey,
        type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        backgroundColor: Colors.white70,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
            icon: Icon(
              FontAwesomeIcons.images,
              size: 22,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.commentDots,
              size: 22,
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
}
