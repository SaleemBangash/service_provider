// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_provider/widgets/my_appbar.dart';

import '../main.dart';
import '../widgets/text_field.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  bool _ifVisible = true;

  void oneToast() {
    setState(() {
      _ifVisible = !_ifVisible;
    });
  }

  bool _atVisible = true;

  void onlyToast() {
    setState(() {
      _atVisible = !_atVisible;
    });
  }

  bool _onVisible = true;

  void hideToast() {
    setState(() {
      _onVisible = !_onVisible;
    });
  }

  // int selectedValue = 1;
  // String? dropdownvalue;
  // var items = ['10', '9', '8', '7', '6', '5'];
  // String? dropvalue;
  // var itemsss = ['KSA', 'USA', 'China', 'Korea', 'Japan', 'UK'];
  // String? dropupvalue;
  // var itemss = ['KSA', 'USA', 'China', 'Korea', 'Japan', 'UK'];
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      data: Text("Skill/Service", style: TextStyle(color: Colors.white)),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 35,
                  width: 300,
                  child: MyTextField(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                    hintText: "Search Here",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    suffixIcon: Icon(Icons.search_outlined),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 20),
                    child: Text("All"),
                  ),
                  Divider(thickness: 2),

                  GestureDetector(
                      onTap: () => showToast(),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 40,
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Home Services'),
                              Icon(FontAwesomeIcons.chevronDown)
                            ],
                          ),
                        ),
                      )),
                  Visibility(
                      visible: _isVisible,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                          ],
                        ),
                      )),
                  Divider(thickness: 2),

                  GestureDetector(
                      onTap: () => oneToast(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 20),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Proffessional'),
                              Icon(FontAwesomeIcons.chevronDown)
                            ],
                          ),
                        ),
                      )),
                  Visibility(
                      visible: _ifVisible,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                          ],
                        ),
                      )),
                  Divider(thickness: 2),

                  GestureDetector(
                      onTap: () => onlyToast(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 20),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Home Services'),
                              Icon(FontAwesomeIcons.chevronDown)
                            ],
                          ),
                        ),
                      )),
                  Visibility(
                      visible: _atVisible,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                          ],
                        ),
                      )),
                  Divider(thickness: 2),

                  GestureDetector(
                      onTap: () => hideToast(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 20),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Home Services'),
                              Icon(FontAwesomeIcons.chevronDown)
                            ],
                          ),
                        ),
                      )),
                  Visibility(
                      visible: _onVisible,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Professional'),
                          ],
                        ),
                      )),
                  // Container(
                  //   child: Padding(
                  //       padding: const EdgeInsets.all(10.0),
                  //       child: Center(
                  //         child: DropdownButton(
                  //             value: selectedValue,
                  //             items: [
                  //               DropdownMenuItem(
                  //                 child: Text("Male"),
                  //                 value: 1,
                  //               ),
                  //               DropdownMenuItem(
                  //                 child: Text("Female"),
                  //                 value: 2,
                  //               ),
                  //               DropdownMenuItem(child: Text("Others"), value: 3),
                  //             ],
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 // selectedValue = value;
                  //               });
                  //             }),
                  //       )),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.all(15.0),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       RaisedButton(
                  //         child: Text('Show/Hide Card B'),
                  //         onPressed: showToast,
                  //       ),
                  //       Card(
                  //         child: ListTile(
                  //           title: Center(
                  //             child: Text('A'),
                  //           ),
                  //         ),
                  //       ),
                  //       GestureDetector(
                  //           onTap: () => showToast(),
                  //           child: Container(
                  //             child: Row(
                  //               children: [
                  //                 Text('C'),
                  //                 Icon(Icons.arrow_drop_down)
                  //               ],
                  //             ),
                  //           )),
                  //       Visibility(
                  //           visible: _isVisible,
                  //           child: Column(
                  //             children: [
                  //               Text('Professional'),
                  //               Divider(
                  //                 thickness: 1,
                  //               ),
                  //               Text('Professional'),
                  //               Divider(
                  //                 thickness: 1,
                  //               ),
                  //               Text('Professional'),
                  //               Divider(
                  //                 thickness: 1,
                  //               ),
                  //               Text('Professional'),
                  //               Divider(
                  //                 thickness: 1,
                  //               ),
                  //               Text('Professional'),
                  //             ],
                  //           )),
                  //       Card(
                  //         child: ListTile(
                  //           title: Center(
                  //             child: Text('C'),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
