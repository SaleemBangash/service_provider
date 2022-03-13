// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/pages/drawer/chat.dart';
import 'package:service_provider/pages/drawer/profile.dart';
import 'package:service_provider/widgets/my_appbar.dart';
import 'package:service_provider/widgets/normal_bottom_bar.dart';

import 'drawer/favourite.dart';

class NewChat extends StatelessWidget {
  const NewChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      leading: GestureDetector(
          onTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NormalBottomBar()));
          }),
          child: Icon(Icons.arrow_back_ios)),
      backgroundColor: Theme.of(context).primaryColor,
      data: Text("Chat", style: TextStyle(color: Colors.white)),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Chat()));
                }),
                child: Container(
                  width: 350,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/women_2.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("My favourite"), Text("data")],
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PopupMenuButton(
                              onSelected: (result) {
                                if (result == 0) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Profile()),
                                  );
                                } else {
                                  if (result == 1) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Favourite()),
                                    );
                                  }
                                }
                              },
                              offset: Offset(0, 50),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              icon: Icon(Icons
                                  .more_vert), //don't specify icon if you want 3 dot menu
                              color: Color.fromARGB(255, 235, 241, 245),
                              itemBuilder: (context) => [
                                    PopupMenuItem<int>(
                                      value: 0,
                                      // onTap: (() {
                                      //   Navigator.push(
                                      //       context,
                                      //       MaterialPageRoute(
                                      //           builder: (context) =>
                                      //               Profile()));
                                      // }),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child:
                                                Image.asset("assets/view.png"),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              "View Profile",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem<int>(
                                      value: 1,
                                      // onTap: (() {
                                      //   Navigator.push(
                                      //       context,
                                      //       MaterialPageRoute(
                                      //           builder: (context) =>
                                      //               Favourite()));
                                      // }),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Image.asset(
                                                "assets/fav_add.png"),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text("Add to favourite"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem<int>(
                                      value: 1,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child:
                                                Image.asset("assets/block.png"),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text("Block"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/women_1.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("My favourite"), Text("data")],
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PopupMenuButton(
                          offset: Offset(0, 50),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          icon: Icon(Icons
                              .more_vert), //don't specify icon if you want 3 dot menu
                          color: Color.fromARGB(255, 235, 241, 245),
                          itemBuilder: (context) => [
                                PopupMenuItem<int>(
                                  value: 0,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Image.asset("assets/view.png"),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          "View Profile",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                PopupMenuItem<int>(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child:
                                            Image.asset("assets/fav_add.png"),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text("Add to favourite"),
                                      ),
                                    ],
                                  ),
                                ),
                                PopupMenuItem<int>(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Image.asset("assets/block.png"),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text("Block"),
                                      ),
                                    ],
                                  ),
                                ),
                              ]))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/male1.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("My favourite"), Text("data")],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PopupMenuButton(
                        offset: Offset(0, 50),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        icon: Icon(Icons
                            .more_vert), //don't specify icon if you want 3 dot menu
                        color: Color.fromARGB(255, 235, 241, 245),
                        itemBuilder: (context) => [
                              PopupMenuItem<int>(
                                value: 0,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image.asset("assets/view.png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "View Profile",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuItem<int>(
                                value: 1,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image.asset("assets/fav_add.png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Add to favourite"),
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuItem<int>(
                                value: 1,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image.asset("assets/block.png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Block"),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  itemContainer() {
    Container(
      child: Column(
        children: [Text("data"), Text("data")],
      ),
    );
  }
}
