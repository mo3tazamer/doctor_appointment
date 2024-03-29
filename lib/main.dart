
import 'package:doctor_appointment/presintion_layer/screens/forgot_password.dart';
import 'package:doctor_appointment/presintion_layer/screens/log_in_screen.dart';
import 'package:doctor_appointment/presintion_layer/screens/register_screen.dart';

import 'package:flutter/material.dart';

import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      home: ForgotPasswordScreen(),
    );
  }
}
