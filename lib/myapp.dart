import 'package:flutter/material.dart';
import 'package:laundryapp/onboarding/homepage.dart';
import 'package:laundryapp/onboarding/loginpage.dart';
import 'package:laundryapp/onboarding/signuppage.dart';
import 'package:laundryapp/onboarding/splashpage.dart';
import 'package:laundryapp/tabs/bottomnavigationclass.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: const SplashPage1(),
      home: const SignUpPage(),
    );
  }
}
