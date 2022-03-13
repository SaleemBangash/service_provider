// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/widgets/my_appbar.dart';

import '../../main.dart';
import '../../widgets/second_button.dart';
import '../../widgets/text_field.dart';

class UpdateProfileGold extends StatefulWidget {
  const UpdateProfileGold({Key? key}) : super(key: key);

  @override
  State<UpdateProfileGold> createState() => _UpdateProfileGoldState();
}

class _UpdateProfileGoldState extends State<UpdateProfileGold> {
  String title = "Azan Malik";
  bool isEditable = false;
  TextEditingController _controller = TextEditingController();
  TextEditingController newcontroller = TextEditingController();
  TextEditingController oldcontroller = TextEditingController();
  bool _isEnable = false;
  bool _atEnable = false;
  bool _onEnable = false;

  bool isChecked = false;

  bool onChecked = false;

  bool ifChecked = false;
  int? selectedvalue;
  String? selectedValue;
  String dropdownvalue = 'Today';
  var items = [
    'Today',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];
  String? dropupvalue;
  var itemss = ['Filter', 'car'];
  String? dropvalue;
  var itemsss = [
    'twitter',
    'facebook',
    'instagram',
    'google',
    'youtube',
    'whatsapp'
  ];

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      data: Text("Update Profile",
          style: TextStyle(
            color: Colors.white,
          )),
      leading: GestureDetector(
          onTap: (() {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Drawer()));
          }),
          child: Icon(Icons.arrow_back_ios)),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(),
            Positioned(
              top: 20,
              left: 150,
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
            Positioned(
              top: 20,
              left: 215,
              child:
                  Icon(Icons.star, color: Color.fromARGB(255, 204, 201, 174)),
            ),
            Positioned(
              top: 130,
              left: 150,
              child: Text(
                'James Rowan',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Column(
                children: [
                  // Row(
                  //   children: <Widget>[
                  //     Container(
                  //       width: 100,
                  //       child: TextField(
                  //         controller: _controller,
                  //         enabled: _isEnable,
                  //       ),
                  //     ),
                  //     IconButton(
                  //         icon: Icon(Icons.edit),
                  //         onPressed: () {
                  //           setState(() {
                  //             _isEnable = true;
                  //           });
                  //         })
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Account Details",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
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
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              setState(() {
                                _isEnable = true;
                              });
                            }),
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 10),
                    child: SizedBox(
                      height: 30,
                      width: 320,
                      child: MyTextField(
                        hintText: "xxx xxxx xxx",
                        controller: _controller,
                        enabled: _isEnable,
                        prefixIcon: Icon(
                          Icons.call,
                          color: Theme.of(context).primaryColor,
                        ),
                        // label: Text("Enter Mobile Number"),

                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Prsonal Information",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
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
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              setState(() {
                                isEditable = true;
                              });
                            }),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset("assets/name.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(children: [
                          SizedBox(
                            height: 30,
                            width: 230,
                            child: Expanded(
                                child: !isEditable
                                    ? Text(title)
                                    : TextFormField(
                                        initialValue: title,
                                        textInputAction: TextInputAction.done,
                                        onFieldSubmitted: (value) {
                                          setState(() => {
                                                isEditable = false,
                                                title = value
                                              });
                                        })),
                          ),
                        ]),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset("assets/contact.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text("azanmalik@gmail.com"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset("assets/gender.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          children: [
                            Checkbox(
                              checkColor: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                  onChecked = false;
                                });
                              },
                            ),
                            Text("Male")
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            value: onChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                onChecked = value!;
                                isChecked = false;
                              });
                            },
                          ),
                          Text("Female")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset("assets/gallery_sidebar.png"),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.all(19),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: sizeConfig!.width(0.49),
                                height: sizeConfig!.height(0.05),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2(
                                      value: selectedvalue,
                                      isDense: false,
                                      itemHeight: 120,
                                      offset: Offset(35, 23),
                                      dropdownMaxHeight: 300,
                                      items: [
                                        DropdownMenuItem(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20),
                                            child: Column(
                                              // mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Image.asset(
                                                        "assets/male.png"),
                                                    Image.asset(
                                                        "assets/men.png"),
                                                    Image.asset(
                                                        "assets/male1.png"),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Image.asset(
                                                        "assets/women_1.png"),
                                                    Image.asset(
                                                        "assets/women_2.png"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          value: '',
                                        ),
                                        // DropdownMenuItem(
                                        //   child: Text(""),
                                        //   value: 2,
                                        // ),
                                        // DropdownMenuItem(
                                        //     child: Text(""), value: 3),
                                      ],
                                      onChanged: (value) {
                                        setState(() {
                                          selectedvalue = value as int;
                                        });
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Container(
                      //   width: 150,
                      //   height: 40,
                      //   decoration: BoxDecoration(color: Colors.grey),
                      // )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset("assets/edit.png"),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Skill",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            // offset: Offset(35, 23),
                            // scrollbarAlwaysShow: false,
                            // scrollbarThickness: 15,
                            hint: Text(
                              'Select Item',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            items: items
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                              color: Colors.black,
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.black),
                            buttonHeight: 40,
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            buttonWidth: 110,
                            itemHeight: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset("assets/edit.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Description",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: SizedBox(
                      height: 120,
                      width: 230,
                      child: MyTextField(
                        hintText: "Write Any Text",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        filled: true,
                        maxLines: 5,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Row(
                          children: [
                            Text("Other Accounts",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                )),
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
                        padding: const EdgeInsets.only(left: 50),
                        child: IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              setState(() {
                                _onEnable = true;
                              });
                            }),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: SizedBox(
                          height: 30,
                          width: 120,
                          child: MyTextField(
                            hintText: "@username",
                            controller: oldcontroller,
                            enabled: _onEnable,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            filled: true,
                            // prefixIcon: Icon(
                            //   Icons.call,
                            //   color: Theme.of(context).primaryColor,
                            // ),
                            // label: Text("Enter Mobile Number"),

                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          margin: EdgeInsets.all(19),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: sizeConfig!.width(0.35),
                          height: sizeConfig!.height(0.04),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
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
                              buttonPadding:
                                  const EdgeInsets.only(left: 14, right: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child:
                              Icon(Icons.close_outlined, color: Colors.white))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text("@username"))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          margin: EdgeInsets.all(19),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: sizeConfig!.width(0.35),
                          height: sizeConfig!.height(0.04),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
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
                              buttonPadding:
                                  const EdgeInsets.only(left: 14, right: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child:
                              Icon(Icons.close_outlined, color: Colors.white))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                        width: 280,
                        height: 90,
                        child: Image.asset(
                          "assets/map.png",
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 20,
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
                                      builder: (context) => LoginScreen()));
                            }),
                            title: ("Update Profile"))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
