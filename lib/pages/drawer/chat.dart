// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/main.dart';
import 'package:service_provider/pages/drawer/profile.dart';
import 'package:service_provider/pages/new_chat.dart';
import 'package:service_provider/widgets/my_appbar.dart';

import 'favourite.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      actions: [
        PopupMenuButton(
            onSelected: (result) {
              if (result == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              } else {
                if (result == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Favourite()),
                  );
                }
              }
            },
            offset: Offset(0, 50),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            icon: Icon(
                Icons.more_vert), //don't specify icon if you want 3 dot menu
            color: Color.fromARGB(255, 154, 183, 202),
            itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 0,
                    // onTap: (() {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => Profile()));
                    // }),
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
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    }),
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
                ])
      ],
      leading: GestureDetector(
          onTap: (() {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => NewChat()));
          }),
          child: Icon(Icons.arrow_back_ios)),
      backgroundColor: Theme.of(context).primaryColor,
      data: Row(
        children: [
          Image.asset("assets/male.png"),
          Text("Azan Malik", style: TextStyle(color: Colors.white))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/male.png"),
                        Container(
                          width: sizeConfig!.width(0.7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Theme.of(context).primaryColor),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "data data data datadata data data data data data data data\ndata data data"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/male.png"),
                        Container(
                          // width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Theme.of(context).primaryColor),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("data data data data"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: sizeConfig!.width(0.7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "data data data datadata data data data data\ndata data data"),
                          ),
                        ),
                        Image.asset("assets/male.png"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          // width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("data data data data"),
                          ),
                        ),
                        Image.asset("assets/male.png"),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/male.png"),
                      Container(
                        // width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Theme.of(context).primaryColor),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "data data data datadata data \ndata data data"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/male.png"),
                      Container(
                        // width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Theme.of(context).primaryColor),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("data data data data"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          // width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("data data "),
                          ),
                        ),
                        Image.asset("assets/male.png"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        suffixIcon: Icon(
                          FontAwesomeIcons.paperPlane,
                          color: Theme.of(context).primaryColor,
                        ),
                        filled: true,

                        fillColor: Colors.grey[200],
                        // icon: Icon(Icons.phone),
                        hintText: "Type Something",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

itemContainer() {
  Column(
    children: [Text("data"), Text("data")],
  );
}
