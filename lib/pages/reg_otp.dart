// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:service_provider/pages/login_screen.dart';
import 'package:service_provider/pages/register_screen.dart';
import 'package:service_provider/pages/dashboard.dart';
import 'package:otp_text_field/otp_field.dart';

import '../main.dart';
import '../widgets/my_appbar.dart';
import '../widgets/second_button.dart';

class RegOtp extends StatelessWidget {
  const RegOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      data: Text(""),
      leading: GestureDetector(
          onTap: (() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => RegScreen()));
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
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: OTPTextField(
            //     outlineBorderRadius: 12,
            //     length: 4,
            //     width: MediaQuery.of(context).size.width,
            //     fieldWidth: 50,
            //     style: TextStyle(fontSize: 25),
            //     textFieldAlignment: MainAxisAlignment.spaceEvenly,
            //     fieldStyle: FieldStyle.box,
            //     // onCompleted: (pin) {
            //     //   print("Completed: " + pin);
            //     // },
            //   ),
            // ),
            //   OtpTextField(
            //   numberOfFields: 5,
            //   borderColor: Color(0xFF512DA8),
            //   showFieldAsBox: true, //set to true to show as box or false to show as dash
            //   onCodeChanged: (String code) {
            //       //handle validation or checks here
            //   },
            //   onSubmit: (String verificationCode){
            //     showDialog(
            //         context: context,
            //         builder: (context){
            //           return AlertDialog(
            //             title: Text("Verification Code"),
            //             content: Text('Code entered is $verificationCode'),
            //           );
            //         }
            //     );
            //   }, // end onSubmit
            // ),
            SizedBox(
              height: 20,
            ),
            Container(
                // width: double.infinity,
                width: sizeConfig!.width(0.8),
                height: sizeConfig!.height(0.06),
                child: MySecondButton(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    }),
                    title: ("Verify"))),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don^t Recieve Otp"),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegScreen()));
                      },
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegScreen()));
                        }),
                        child: const Text(
                          " Resend OTP ",
                          style: TextStyle(
                              color: Color(0xff55a9ff),
                              decoration: TextDecoration.underline),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
