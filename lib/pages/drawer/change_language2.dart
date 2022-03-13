// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/register_screen.dart';
import 'package:service_provider/widgets/Service_drawer.dart';

import '../../widgets/text_field.dart';

class ChangeLanguageOne extends StatefulWidget {
  const ChangeLanguageOne({Key? key}) : super(key: key);

  @override
  _ChangeLanguageOneState createState() => _ChangeLanguageOneState();
}

class _ChangeLanguageOneState extends State<ChangeLanguageOne> {
  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  bool atChecked = false;
  bool aChecked = false;
  bool bChecked = false;
  bool cChecked = false;
  bool dChecked = false;
  bool eChecked = false;
  bool fChecked = false;

  var iChecked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Dialog(
        alignment: Alignment.center,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)), //this right here
        child: Container(
          decoration: BoxDecoration(
              // color: Colors.grey,

              ),
          height: 680,
          //width: width / 3,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          "Choose the Language",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.close,
                        ),
                        iconSize: 30,
                        color: Colors.red,
                        splashColor: Colors.purple,
                        onPressed: () => Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServiceDrawer())),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      height: 30,
                      child: MyTextField(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                        hintText: "Search Here",
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        suffixIcon: Icon(Icons.search_outlined),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/usa.png",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("English")
                          ],
                        ),
                        Checkbox(
                          checkColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                              onChecked = false;
                              ifChecked = false;
                              atChecked = false;
                              aChecked = false;
                              bChecked = false;
                              cChecked = false;
                              dChecked = false;
                              eChecked = false;
                              fChecked = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/usa.png",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Arabic")
                          ],
                        ),
                        Checkbox(
                          checkColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          value: onChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              onChecked = value!;
                              isChecked = false;
                              fChecked = false;
                              ifChecked = false;
                              atChecked = false;
                              aChecked = false;
                              bChecked = false;
                              cChecked = false;
                              dChecked = false;
                              eChecked = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/usa.png",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Arabic")
                          ],
                        ),
                        Checkbox(
                          checkColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          value: ifChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              ifChecked = value!;
                              isChecked = false;
                              fChecked = false;
                              onChecked = false;
                              atChecked = false;
                              aChecked = false;
                              bChecked = false;
                              cChecked = false;
                              dChecked = false;
                              eChecked = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/usa.png",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Arabic")
                          ],
                        ),
                        Checkbox(
                          checkColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          value: atChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              atChecked = value!;
                              onChecked = false;
                              isChecked = false;
                              fChecked = false;
                              ifChecked = false;

                              aChecked = false;
                              bChecked = false;
                              cChecked = false;
                              dChecked = false;
                              eChecked = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/usa.png",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Arabic")
                          ],
                        ),
                        Checkbox(
                          checkColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          value: aChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              aChecked = value!;
                              onChecked = false;
                              isChecked = false;
                              fChecked = false;
                              ifChecked = false;
                              atChecked = false;
                              fChecked = false;
                              bChecked = false;
                              cChecked = false;
                              dChecked = false;
                              eChecked = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/usa.png",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Arabic")
                          ],
                        ),
                        Checkbox(
                          checkColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          value: bChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              bChecked = value!;
                              onChecked = false;
                              isChecked = false;
                              fChecked = false;
                              ifChecked = false;
                              atChecked = false;
                              aChecked = false;

                              cChecked = false;
                              dChecked = false;
                              eChecked = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/usa.png",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Arabic")
                          ],
                        ),
                        Checkbox(
                          checkColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          value: cChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              cChecked = value!;
                              onChecked = false;
                              isChecked = false;
                              fChecked = false;
                              ifChecked = false;
                              atChecked = false;
                              aChecked = false;
                              bChecked = false;

                              dChecked = false;
                              eChecked = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/usa.png",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Arabic")
                          ],
                        ),
                        Checkbox(
                          checkColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          value: dChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              dChecked = value!;
                              onChecked = false;
                              isChecked = false;
                              fChecked = false;
                              ifChecked = false;
                              atChecked = false;
                              aChecked = false;
                              bChecked = false;
                              cChecked = false;

                              eChecked = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/usa.png",
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Arabic")
                          ],
                        ),
                        Checkbox(
                          checkColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          value: eChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              eChecked = value!;
                              onChecked = false;
                              isChecked = false;
                              fChecked = false;
                              ifChecked = false;
                              atChecked = false;
                              aChecked = false;
                              bChecked = false;
                              cChecked = false;
                              dChecked = false;
                            });
                          },
                        ),
                      ],
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
