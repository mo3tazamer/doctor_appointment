
import 'package:doctor_appointment/presintion_layer/screens/forgot_password.dart';
import 'package:doctor_appointment/presintion_layer/screens/home_screen.dart';
import 'package:doctor_appointment/presintion_layer/screens/log_in_screen.dart';
import 'package:doctor_appointment/presintion_layer/screens/register_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize:  Size(360, 690),
      minTextAdapt: true,

      child: MaterialApp(
        title: 'Doctor Appointment',
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
