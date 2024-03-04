import 'package:doctor_appointment/presintion_layer/widgets/my_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../core/color_manager.dart';
import '../../core/text_style/textstyle_manager_inter.dart';
import '../../core/text_style/textstyle_manager_poppins.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/otp.png',
            fit: BoxFit.cover,
            height: 230,
            width: 230,
          ),
          const SizedBox(height: 15),
          Text(
            'VERIFY YOUR EMAIL',
            style: getBoldStyleInter(fontSize: 20, color: ColorManager.black),
          ),
          const SizedBox(height: 15),
          Text(
            'Please Enter The 4 Digit Code Sent To Your Email Address',
            style: getSemiBoldStylePoppins(
                fontSize: 15, color: ColorManager.black),
          ),
          const SizedBox(height: 15),
          OtpTextField(
            numberOfFields: 4,
            borderColor: ColorManager.blue,
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  });
            },
          ),
          const SizedBox(height: 15),
          InkWell(
            child: Text(
              'Resend Code',
              style: getSemiBoldStylePoppins(
                  fontSize: 15, color: ColorManager.grey),
            ),
          ),
          const SizedBox(height: 15),
          MyButton(text: 'VERIFY', onPressed: () {})
        ],
      ),
    );
  }
}
