// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:service_provider/pages/call_dialogue.dart';

import '../../main.dart';
import '../../widgets/my_appbar.dart';
import '../../widgets/text_field.dart';

class NormalProfile extends StatelessWidget {
  const NormalProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 90,
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
              ),
              Positioned(
                top: 30,
                left: 135,
                child: Container(
                  width: 100,
                  height: sizeConfig!.height(0.13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.0),
                    // image: DecorationImage(
                    //   image:
                    //       const AssetImage('assets/images/john.jpg'),
                    //   fit: BoxFit.fill,
                    // ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/male.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: (() {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Drawer()));
                        }),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child:
                              Icon(Icons.arrow_back_ios, color: Colors.white),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(Icons.share, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 110,
                  left: 195,
                  child: Icon(Icons.star,
                      color: Color.fromARGB(255, 245, 222, 17))),
              Positioned(
                top: 135,
                left: 135,
                child: Column(
                  children: [
                    Text("4,5"),
                    Row(
                      children: [
                        Icon(Icons.star,
                            color: Color.fromARGB(255, 245, 222, 17)),
                        Icon(Icons.star,
                            color: Color.fromARGB(255, 245, 222, 17)),
                        Icon(Icons.star,
                            color: Color.fromARGB(255, 245, 222, 17)),
                        Icon(Icons.star,
                            color: Color.fromARGB(255, 245, 222, 17)),
                        Icon(Icons.star,
                            color: Color.fromARGB(255, 136, 135, 129)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Name",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: MyTextField(
                        hintText: "name",

                        // label: Text("Enter Mobile Number"),

                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Skill/service",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: MyTextField(
                        hintText: "Skills",

                        // label: Text("Enter Mobile Number"),

                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Description",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: MyTextField(
                        hintText:
                            "Description Description Description Description\n Description DescriptionDescription ",

                        // label: Text("Enter Mobile Number"),

                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/like.png",
                                width: 20,
                                height: 20,
                              ),
                              Text("Like")
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("assets/views.png",
                                  width: 20, height: 20),
                              Text("Views")
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("assets/fav.png",
                                  width: 20, height: 20),
                              Text("Favourites")
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("assets/report.png",
                                  width: 20, height: 20),
                              Text("Report")
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Contact"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/sms.png",
                            width: 20,
                            height: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => CallDialogue())));
                            },
                            child: Image.asset("assets/whatsapp.png",
                                width: 20, height: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
