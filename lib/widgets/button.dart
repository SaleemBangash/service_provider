// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Function()? onTap;
  const MyButton({
    Key? key,
    required this.title,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color(0xffa73ce6),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));

    // return Row(
    //   children: [
    //     Icon(icon),
    //     InkWell(
    //       onTap: onTap,
    //       child: Container(
    //         padding: EdgeInsets.all(5),
    //         alignment: Alignment.center,
    //         height: double.maxFinite,
    //         width: double.maxFinite,
    //         decoration: BoxDecoration(
    //           color: Color(0xffa73ce6),
    //           borderRadius: const BorderRadius.all(
    //             Radius.circular(10),
    //           ),
    //         ),
    //         child: Text(
    //           title,
    //           style: Theme.of(context).textTheme.headline2,
    //           softWrap: true,
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //       // ElevatedButton(
    //       //   child: Text(title, style: Theme.of(context).textTheme.bodyText2),
    //       //   style: TextButton.styleFrom(
    //       //     // shadowColor: Colors.black,
    //       //     // minimumSize: Size(150, 30),
    //       //     // maximumSize: Size(160, 30),
    //       //     shape:
    //       //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

    //       //     //StadiumBorder(),

    //       //     backgroundColor: Color(0xffa73ce6),
    //       //   ),
    //       //   onPressed: onPressed,
    //       // ),
    //     )
    //   ],
    // );
    // InkWell(
    //   onTap: onTap,
    //   child: Container(
    //     alignment: Alignment.center,
    //     height: double.maxFinite,
    //     width: double.maxFinite,
    //     decoration: BoxDecoration(
    //       color: Theme.of(context).primaryColor,
    //       borderRadius: const BorderRadius.all(
    //         Radius.circular(10),
    //       ),
    //     ),
    //     child: Text(
    //       title,
    //       style: Theme.of(context).textTheme.headline2,
    //     ),
    //   ),
    // );
  }
}
