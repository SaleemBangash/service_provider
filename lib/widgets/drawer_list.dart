import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final String assetName;
  final DecorationImage? image;
  final String data;
  const DrawerList(
      {Key? key, required this.assetName, this.image, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(assetName), fit: BoxFit.cover)),
            )),
        Text(data),
      ],
    );
  }
}
