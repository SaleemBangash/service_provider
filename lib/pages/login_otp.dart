// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:service_provider/pages/service_dashboard.dart';
import 'package:service_provider/pages/login_screen.dart';
// import 'package:pin_entry_text_field/pin_entry_text_field.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';

import '../main.dart';
import '../widgets/my_appbar.dart';
import '../widgets/second_button.dart';

class LoginOtp extends StatelessWidget {
  const LoginOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      data: Text(""),
      leading: GestureDetector(
          onTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          }),
          child: Icon(Icons.arrow_back_ios)),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Enter OTP Verification"),
            SizedBox(
              height: 30,
            ),
            Text("Enter OTP Sent to +12345678"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OTPTextField(
                outlineBorderRadius: 12,
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 50,
                style: TextStyle(fontSize: 25),
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                fieldStyle: FieldStyle.box,
                // onCompleted: (pin) {
                //   print("Completed: " + pin);
                // },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                // width: double.infinity,
                width: sizeConfig!.width(0.8),
                height: sizeConfig!.height(0.06),
                child: MySecondButton(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ServiceDashboard()));
                    }),
                    title: ("Verify"))),
          ],
        ),
      ),
    );
  }
}
