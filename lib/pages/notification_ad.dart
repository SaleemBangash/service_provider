// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:service_provider/pages/normalU_dashboard.dart';
import 'package:service_provider/widgets/my_appbar.dart';

import '../main.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';

class NotificationAd extends StatefulWidget {
  const NotificationAd({Key? key}) : super(key: key);

  @override
  State<NotificationAd> createState() => _NotificationAdState();
}

class _NotificationAdState extends State<NotificationAd> {
  String? dropdownvalue;
  var items = ['10', '9', '8', '7', '6', '5'];
  String? dropvalue;
  var itemsss = ['KSA', 'USA', 'China', 'Korea', 'Japan', 'UK'];
  String? dropupvalue;
  var itemss = ['KSA', 'USA', 'China', 'Korea', 'Japan', 'UK'];
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      leading: GestureDetector(
          onTap: (() {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => NormalUDashboard()));
          }),
          child: Icon(Icons.arrow_back_ios)),
      data: Text("Banner Ad", style: TextStyle(color: Colors.white)),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Text(
                          "Add Title",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            FontAwesomeIcons.asterisk,
                            size: 15,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: sizeConfig!.width(0.75),
                      height: sizeConfig!.height(0.06),
                      child: MyTextField(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        filled: true,

                        // label: Text("Enter Mobile Number"),

                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Add Description",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        FontAwesomeIcons.asterisk,
                        size: 15,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: sizeConfig!.width(0.75),
                  height: sizeConfig!.height(0.2),
                  child: MyTextField(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    filled: true,
                    maxLines: 5,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text(
                      "Select Your Country",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        FontAwesomeIcons.asterisk,
                        size: 15,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(19),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 218, 218),
                  // border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: sizeConfig!.width(0.75),
                height: sizeConfig!.height(0.04),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'Riyadh',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    isDense: true,
                    isExpanded: false,
                    alignment: Alignment.center,
                    // elevation: -30,
                    value: dropupvalue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: itemss.map((String itemss) {
                      return DropdownMenuItem(
                        value: itemss,
                        child: Text(
                          itemss,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? oldValue) {
                      setState(() {
                        dropupvalue = oldValue!;
                      });
                    },
                    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text(
                      "Select Your City",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        FontAwesomeIcons.asterisk,
                        size: 15,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  margin: EdgeInsets.all(19),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 231, 218, 218),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: sizeConfig!.width(0.75),
                  height: sizeConfig!.height(0.04),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        'Riyadh',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      isDense: true,
                      isExpanded: false,
                      alignment: Alignment.center,
                      // elevation: -30,
                      value: dropvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: itemsss.map((String itemsss) {
                        return DropdownMenuItem(
                          value: itemsss,
                          child: Text(
                            itemsss,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropvalue = newValue!;
                        });
                      },
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        FontAwesomeIcons.asterisk,
                        size: 15,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  margin: EdgeInsets.all(19),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 231, 218, 218),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: sizeConfig!.width(0.75),
                  height: sizeConfig!.height(0.04),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        '10',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      isDense: true,
                      isExpanded: false,
                      alignment: Alignment.center,
                      // elevation: -30,
                      value: dropdownvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: itemsss.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("Total Cost"), Text("=100SAR")],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    // width: double.infinity,
                    width: sizeConfig!.width(0.8),
                    height: sizeConfig!.height(0.05),
                    child: MySecondButton(
                        borderRadius: BorderRadius.circular(10),
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NormalUDashboard()));
                        }),
                        title: ("Proceed"))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PickedFile? imageFile = null;

  // Future<void> _showChoiceDialog(BuildContext context) async {
  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                    },
                    title: Text("Gallery"),
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
}
