// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:service_provider/pages/normalU_dashboard.dart';
import 'package:service_provider/pages/service_dashboard.dart';
import 'package:service_provider/widgets/bottom_bar.dart';
import 'package:service_provider/widgets/my_appbar.dart';
import 'package:image_picker/image_picker.dart';

import '../main.dart';
import 'dart:io';

// import 'login_screen.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  get icon => null;

  @override
  Widget build(BuildContext context) {
    bool _onVisible = true;

    void hideToast() {
      setState(() {
        _onVisible = !_onVisible;
      });
    }

    return MyAppBar(
      // actions: [
      //   PopupMenuButton(
      //       offset: Offset(0, 50),
      //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      //       icon: Icon(
      //           Icons.more_vert), //don't specify icon if you want 3 dot menu
      //       color: Color.fromARGB(255, 235, 241, 245),
      //       itemBuilder: (context) => [
      //             PopupMenuItem<int>(
      //               value: 0,
      //               child: Text(
      //                 "Setting",
      //                 style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      //               ),
      //             ),
      //             PopupMenuItem<int>(
      //               value: 1,
      //               child: Text("Privacy Policy"),
      //             ),
      //           ])
      // ],
      bottomNavigationBar: BottomBar(),
      backgroundColor: Theme.of(context).primaryColor,
      data: Text(
        "Upload Image",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: GestureDetector(
          onTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ServiceDashboard()));
          }),
          child: Icon(Icons.arrow_back_ios)),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => _oneshowChoiceDialog(context),
                  child: (oneimageFile == null)
                      ? Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          width: 100,
                          height: 90,
                          // width: sizeConfig!.width(0.85),
                          // height: sizeConfig!.height(0.15),
                          // child: Icon(
                          //   Icons.upload,
                          //   color: Colors.grey[800],
                          // )
                        )
                      // Text("Choose Image")
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.file(
                            File(oneimageFile!.path),
                            width: 100,
                            height: 90,
                            // width: sizeConfig!.width(0.85),
                            // height: sizeConfig!.height(0.15),
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
                GestureDetector(
                  onTap: () => _twoshowChoiceDialog(context),
                  child: (twoimageFile == null)
                      ? Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          width: 100,
                          height: 90,
                          // width: sizeConfig!.width(0.85),
                          // height: sizeConfig!.height(0.15),
                          // child: Icon(
                          //   Icons.upload,
                          //   color: Colors.grey[800],
                          // )
                        )
                      // Text("Choose Image")
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.file(
                            File(twoimageFile!.path),
                            width: 100,
                            height: 90,
                            // width: sizeConfig!.width(0.85),
                            // height: sizeConfig!.height(0.15),
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
                GestureDetector(
                  onTap: () => _threeshowChoiceDialog(context),
                  child: (threeimageFile == null)
                      ? Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          width: 100,
                          height: 90,
                          // width: sizeConfig!.width(0.85),
                          // height: sizeConfig!.height(0.15),
                          // child: Icon(
                          //   Icons.upload,
                          //   color: Colors.grey[800],
                          // )
                        )
                      // Text("Choose Image")
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.file(
                            File(threeimageFile!.path),
                            width: 100,
                            height: 90,
                            // width: sizeConfig!.width(0.85),
                            // height: sizeConfig!.height(0.15),
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _ChoiceDialog(context),
                    child: (newimageFile == null)
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            width: 100,
                            height: 90,
                            // width: sizeConfig!.width(0.85),
                            // height: sizeConfig!.height(0.15),
                            // child: Icon(
                            //   Icons.upload,
                            //   color: Colors.grey[800],
                            // )
                          )
                        // Text("Choose Image")
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.file(
                              File(newimageFile!.path),
                              width: 100,
                              height: 90,
                              // width: sizeConfig!.width(0.85),
                              // height: sizeConfig!.height(0.15),
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () => _showChoiceDialog(context),
                    child: (imageFile == null)
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            width: 100,
                            height: 90,
                            // width: sizeConfig!.width(0.85),
                            // height: sizeConfig!.height(0.15),
                            // child: Icon(
                            //   Icons.upload,
                            //   color: Colors.grey[800],
                            // )
                          )
                        // Text("Choose Image")
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.file(
                              File(imageFile!.path),
                              width: 100,
                              height: 90,
                              // width: sizeConfig!.width(0.85),
                              // height: sizeConfig!.height(0.15),
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Column(
              children: [
                GestureDetector(
                    onTap: () => _showChoiceDialog(context),
                    child: Image.asset("assets/add_img.png")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "You can preview your picture\n         by visiting profile"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  PickedFile? imageFile = null;
  PickedFile? newimageFile = null;
  PickedFile? oneimageFile = null;
  PickedFile? twoimageFile = null;
  PickedFile? threeimageFile = null;

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

  Future<void> _ChoiceDialog(BuildContext context) {
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
                      _Gallery(context);
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
                      _Camera(context);
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

  void _Gallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      newimageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _Camera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      newimageFile = pickedFile!;
    });
    Navigator.pop(context);
  }

  Future<void> _oneshowChoiceDialog(BuildContext context) {
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
                      _oneGallery(context);
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
                      _oneCamera(context);
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

  void _oneGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      oneimageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _oneCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      oneimageFile = pickedFile!;
    });
    Navigator.pop(context);
  }

  Future<void> _twoshowChoiceDialog(BuildContext context) {
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
                      _twoGallery(context);
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
                      _twoCamera(context);
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

  void _twoGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      twoimageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _twoCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      twoimageFile = pickedFile!;
    });
    Navigator.pop(context);
  }

  Future<void> _threeshowChoiceDialog(BuildContext context) {
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
                      _threeGallery(context);
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
                      _threeCamera(context);
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

  void _threeGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      threeimageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _threeCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      threeimageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
}
