import 'package:flutter/material.dart';

import '../../core/color_manager.dart';
import '../../core/text_style/textstyle_manager_inter.dart';
import '../../core/text_style/textstyle_manager_poppins.dart';
import '../widgets/my_Text_form_filed.dart';
import '../widgets/my_botton.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Forgot_password.png',
              fit: BoxFit.cover,
              height: 230,
              width: 230,
            ),
            Text(
              'FORGOT PASSWORD',
              style: getBoldStyleInter(fontSize: 20, color: ColorManager.black),
            ),
            Text(
              'Please Enter Your Register Email To Receive a Verification Code',
              style: getSemiBoldStylePoppins(
                  fontSize: 15, color: ColorManager.black),
            ),
            MyTextFormFiled(
                obscureText: false,
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                labelText: ' email',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                }),
            const SizedBox(
              height: 10,
            ),
            MyButton(text: 'Send', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
