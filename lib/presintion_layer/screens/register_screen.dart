import 'package:flutter/material.dart';

import '../../core/color_manager.dart';
import '../../core/font_manager.dart';
import '../../core/text_style/textstyle_manager_inter.dart';

import '../widgets/my_Text_form_filed.dart';
import '../widgets/my_botton.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // image of screen
              Image.asset(
                'assets/images/register.png',
                fit: BoxFit.cover,
                height: 250,
                width: 250,
              ),
              const SizedBox(
                height: 10,
              ),
              // text of screen
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'SIGNUP',
                    style: getBoldStyleInter(
                        color: ColorManager.black, fontSize: FontSize.s20),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // text form filed email
              Row(
                children: [
                  Flexible(
                    child: MyTextFormFiled(
                        colorManager: ColorManager.yellow,
                        obscureText: false,
                        prefixIcon: Icons.person_outline,
                        keyboardType: TextInputType.emailAddress,
                        labelText: 'first name',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        }),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: MyTextFormFiled(
                        colorManager: ColorManager.yellow,
                        obscureText: false,
                        prefixIcon: Icons.person_outline,
                        keyboardType: TextInputType.emailAddress,
                        labelText: 'last name',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        }),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // text form filed email
              MyTextFormFiled(
                  colorManager: ColorManager.yellow,
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
              // text form filed password
              MyTextFormFiled(
                  colorManager: ColorManager.yellow,
                  obscureText: false,
                  prefixIcon: Icons.lock_outline_sharp,
                  keyboardType: TextInputType.visiblePassword,
                  labelText: ' password',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 10,
              ),
              // text form filed retype password
              MyTextFormFiled(
                  colorManager: ColorManager.yellow,
                  obscureText: false,
                  prefixIcon: Icons.lock_outline_sharp,
                  keyboardType: TextInputType.visiblePassword,
                  labelText: 'confirm password',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                height: 20,
              ),
              // button register
              MyButton(text: 'Sign Up', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
