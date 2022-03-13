import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Color.fromARGB(179, 3, 3, 3),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: Container(
            width: 45,
            height: 45,
            decoration:
                BoxDecoration(color: Colors.grey, shape: BoxShape.circle)),
      ),
    );
  }
}
