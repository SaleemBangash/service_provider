import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/pages/dashboard.dart';
import 'package:service_provider/pages/exit_dialogue.dart';
import 'package:service_provider/pages/gallery.dart';
import 'package:service_provider/pages/hide_dialogue.dart';
import 'package:service_provider/pages/new_chat.dart';
import 'package:service_provider/pages/service_dashboard.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  // int currentTab = 0;
  int currentIndex = 0;
  final List<Widget> screens = [
    ServiceDashboard(),
    NewChat(),
    Gallery(),
    HideDialogue(),
    ExitDialogue()
    //Center(child: Text("Settings")),
  ];
  Widget currentScreen = Dashboard();

  // final PageStorageBucket bucket = PageStorageBucket();
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Theme.of(ctx).scaffoldBackgroundColor,
        body: screens[currentIndex],
        bottomNavigationBar: SizedBox(
          height: 50,
          child: BottomNavigationBar(
              // elevation: 8,
              backgroundColor: Theme.of(ctx).scaffoldBackgroundColor,
              onTap: onTabTapped, // new
              unselectedItemColor: Colors.grey,
              selectedItemColor: Theme.of(context).primaryColor,
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              selectedIconTheme: const IconThemeData(size: 23),
              unselectedIconTheme: const IconThemeData(size: 21),
              showUnselectedLabels: true,
              selectedFontSize: 0.0,
              unselectedFontSize: 0.0,
              // selectedLabelStyle:
              //     const TextStyle(fontWeight: FontWeight.normal),
              // unselectedLabelStyle:
              //     const TextStyle(fontWeight: FontWeight.normal),
              items: const [
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
                // BottomNavigationBarItem(
                //   label: "",
                //   icon: GestureDetector(
                //       onTap: () => Navigator.push(context,
                //           MaterialPageRoute(builder: (context) => ExitDialogue())),
                //       child: Image.asset("assets/closed.png")),
                // )
              ]),
        ),
      ),
    );
  }
}
