import 'package:flutter/material.dart';

import '../../core/color_manager.dart';
import '../../core/text_style/textstyle_manager_inter.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 220,
        height: 55,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorManager.blue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: getBoldStyleInter(
              color: ColorManager.white,
              fontSize: 15,
            ),
          ),
        ));
  }
}
