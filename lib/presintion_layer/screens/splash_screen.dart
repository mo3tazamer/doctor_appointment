
import 'package:doctor_appointment/core/font_manager.dart';
import 'package:flutter/material.dart';

import '../../core/color_manager.dart';
import '../../core/routes/routes.dart';
import '../../core/text_style/textstyle_manager_inter.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
             Row(children: [
              Text(
                'HealthCare ',
                style: getBoldStyleInter(
                  fontSize: FontSize.s30,
                  color: ColorManager.blue,

                ),
              ),
              Text(
                'will Be ',
                style: getBoldStyleInter(
                  fontSize: FontSize.s24,
                  color: ColorManager.black,

                ),
              ),
            ]),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Help You.',
                  style: getBoldStyleInter(
                    fontSize: FontSize.s24,
                    color: ColorManager.black,

                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
             Text(
              'Communication Between Patients And Medical Professionals ',
              style: getRegularTextStyleInter(
                fontSize: FontSize.s15,
                color: ColorManager.grey,
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: ColorManager.lightBlue,
                  ),
                  child:  Text(
                    '          Get Started',
                    style: getBoldStyleInter(
                        color: ColorManager.white,
                        fontSize: FontSize.s20,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 118,
                    height: 46,

                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            ColorManager.yellow),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, AppRoute.login);
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
