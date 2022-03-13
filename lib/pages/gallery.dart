import 'package:flutter/material.dart';
import 'package:service_provider/pages/normalU_dashboard.dart';
import 'package:service_provider/pages/service_dashboard.dart';
import 'package:service_provider/widgets/my_appbar.dart';
import 'package:service_provider/widgets/normal_bottom_bar.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      leading: GestureDetector(
          onTap: (() {
            Navigator.pop(
              context,
            );
          }),
          child: Icon(Icons.arrow_back_ios)),
      data: Text("Upload Image", style: TextStyle(color: Colors.white)),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/add_img.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "You can preview your picture\n         by visiting profile"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
