// import 'dart:js';

// ignore_for_file: prefer_const_constructors

// import 'package:commerce_app/pages/MyDrawer/cash_deposit.dart';
// import 'package:commerce_app/pages/MyDrawer/create_page.dart';
// import 'package:commerce_app/pages/MyDrawer/my_pages.dart';
// import 'package:commerce_app/pages/MyDrawer/privacy_policy.dart';
// import 'package:commerce_app/pages/MyDrawer/profile_page.dart';
// import 'package:commerce_app/pages/MyDrawer/settings.dart';
// import 'package:commerce_app/pages/MyDrawer/support_page.dart';
// import 'package:commerce_app/pages/MyDrawer/terms_services.dart';
// import 'package:commerce_app/pages/MyDrawer/withdraw_cash.dart';
// import 'package:commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/pages/call_dialogue.dart';
import 'package:service_provider/pages/dashboard.dart';
import 'package:service_provider/pages/drawer/chat.dart';
import 'package:service_provider/pages/drawer/favourite.dart';
import 'package:service_provider/pages/drawer/update_profile.dart';
import 'package:service_provider/pages/drawer/update_profile_gold.dart';
import 'package:service_provider/pages/drawer/upgrade.dart';
import 'package:service_provider/pages/gallery.dart';
import 'package:service_provider/pages/hide_dialogue.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/notification_ad.dart';
import 'package:service_provider/pages/register_screen.dart';
import 'package:service_provider/pages/splash_screen.dart';
import 'package:service_provider/pages/story_ad.dart';
import 'package:service_provider/pages/upload_image.dart';
import 'package:service_provider/widgets/drawer_list.dart';

import '../pages/banner_ad.dart';
import '../pages/drawer/change_language.dart';
import '../pages/drawer/profile.dart';
import '../pages/new_chat.dart';

class NormalDrawer extends StatefulWidget {
  const NormalDrawer({Key? key}) : super(key: key);

  @override
  State<NormalDrawer> createState() => _NormalDrawerState();
}

class _NormalDrawerState extends State<NormalDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(35), bottomRight: Radius.circular(15)),
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/male.png',
                      width: 70.0,
                      height: 70.0,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text("data"),
                    ),
                  ],
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => UpdateProfileGold())));
              },
              child: DrawerList(
                assetName: "assets/edit.png",
                data: "Update Profile",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Upgrade())));
              },
              child: DrawerList(
                assetName: "assets/upgrade.png",
                data: "Upgrade Package",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ChangeLanguage())));
              },
              child: DrawerList(
                assetName: "assets/language.png",
                data: "Change Language",
              ),
            ),
            SizedBox(
              height: 30,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Favourite())));
              },
              child: DrawerList(
                assetName: "assets/location.png",
                data: "Update Location",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => BannerAd())));
              },
              child: DrawerList(
                assetName: "assets/gallery_sidebar.png",
                data: "Request Banner",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => UploadImage())));
              },
              child: DrawerList(
                assetName: "assets/gallery_sidebar.png",
                data: "Gallery",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => NewChat())));
              },
              child: DrawerList(
                assetName: "assets/chat.png",
                data: "Chat",
              ),
            ),
            SizedBox(
              height: 30,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Profile())));
              },
              child: DrawerList(
                assetName: "assets/share.png",
                data: "Share",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => BannerAd())));
              },
              child: DrawerList(
                assetName: "assets/info.png",
                data: "About Us",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => NotificationAd())));
              },
              child: DrawerList(
                assetName: "assets/rate.png",
                data: "Rate Us",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => CallDialogue())));
              },
              child: DrawerList(
                assetName: "assets/contact.png",
                data: "Contact Us",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Dashboard())));
              },
              child: DrawerList(
                assetName: "assets/logout.png",
                data: "LogOut",
              ),
            ),

            // listTile(
            //   icon: Icons.edit_road,
            //   title: "Register",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => LoginScreen())),
            // ),
            // listTile(
            //   icon: Icons.person,
            //   title: "Login",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => RegScreen())),
            // ),
            // // ListTile(
            // //   leading: Icon(Icons.person),
            // //   title: Text("Profile"),
            // //   onTap: () {
            // //     Navigator.pop(context);
            // //   },
            // // ),
            // listTile(
            //   icon: Icons.find_in_page_outlined,
            //   title: "My Pages",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => LoginScreen())),
            // ),
            // listTile(
            //   icon: FontAwesomeIcons.file,
            //   title: "Create Pages",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => LoginScreen())),
            // ),
            // listTile(
            //   icon: FontAwesomeIcons.solidCreditCard,
            //   title: "Deposit",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => RegScreen())),
            // ),
            // listTile(
            //   icon: FontAwesomeIcons.creditCard,
            //   title: "WithDraw",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => LoginScreen())),
            // ),
            // listTile(
            //   icon: FontAwesomeIcons.creativeCommons,
            //   title: "Terms Of Services",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => LoginScreen())),
            // ),
            // listTile(
            //   icon: FontAwesomeIcons.lock,
            //   title: "Privacy Policy",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => RegScreen())),
            // ),
            // listTile(
            //   icon: Icons.settings,
            //   title: "Setting",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => RegScreen())),
            // ),
            // listTile(
            //   icon: Icons.person,
            //   title: "Support",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => LoginScreen())),
            // ),
            // listTile(
            //   icon: Icons.logout,
            //   title: "Log Out",
            //   onTap: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => RegScreen())),
            // ),
          ],
        ),
        // drawer: drawer,
      ),
    );
  }

  listTile({required IconData icon, required String title, Function()? onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
      ),
      title:
          Text(title, style: Theme.of(context).textTheme.bodyText2!.copyWith()),
      onTap: onTap,
    );
  }
}
