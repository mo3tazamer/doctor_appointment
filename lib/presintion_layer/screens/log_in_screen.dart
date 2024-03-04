
import 'package:flutter/material.dart';

import '../../core/color_manager.dart';
import '../../core/font_manager.dart';
import '../../core/routes/routes.dart';
import '../../core/text_style/textstyle_manager_inter.dart';
import '../../core/text_style/textstyle_manager_poppins.dart';
import '../widgets/my_Text_form_filed.dart';
import '../widgets/my_botton.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

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
                'assets/images/log.png',fit: BoxFit.cover,
                height: 230    ,
                width: 230,

              ),
              const SizedBox(
                height: 10,
              ),
              // text of screen
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'LOGIN',
                    style: getBoldStyleInter(
                        color: ColorManager.black, fontSize: FontSize.s20),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // text form filed email
              MyTextFormFiled(
                  obscureText: false,
                  prefixIcon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'email',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 15,
              ),
              // text form filed password
              MyTextFormFiled(
                colorManager: ColorManager.yellow,
                  obscureText: false,
                  prefixIcon: Icons.lock_outline_sharp,
                  suffixIcon: Icons.visibility,
                  keyboardType: TextInputType.visiblePassword,
                  labelText: ' password',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  }),
              const SizedBox(height: 10,),
              // forget password
              Row(
                children: [
                  const Spacer(),
                  Text('Forget Password?',
                      style: getSemiBoldStyleInter(
                        color: ColorManager.black,
                      )),
                ],
              ),
              const SizedBox(height: 20,),
              // button login
               MyButton(text: 'Login', onPressed: (){}),
              const SizedBox(height: 20,),
              // or login with
              Text(
                'OR',
                style: getBoldStyleInter(
                    color: ColorManager.black, fontSize: FontSize.s13),
              ),
              const SizedBox(height: 5,),
              Text(
                'Login with',
                style: getMediumStyleInter(
                    color: ColorManager.black, fontSize: FontSize.s15),
              ),
              const SizedBox(height: 20,),
              // icons logos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/facebook.png',height: 45,width: 45,),
                  Image.asset('assets/images/google.png',height: 45,width: 45,),
                  Image.asset('assets/images/apple.png',height: 45,width: 45,),
                ],
              ),

              const SizedBox(
                height: 15,
              ),
              // don't have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: getSemiBoldStylePoppins(
                        color: ColorManager.black, fontSize: FontSize.s15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoute.register);
                      },
                      child: Text(
                        'Register now',
                        style: getBoldStylePoppins(
                            color: ColorManager.lightBlue,
                            fontSize: FontSize.s16),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
