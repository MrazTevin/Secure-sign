import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
// import 'package:secure_sign/home.dart';
import 'package:secure_sign/authentication/login/otp_screen.dart';
import 'package:secure_sign/authentication/registration/register_screen.dart';
import 'package:secure_sign/authentication/login/login_screen.dart';
import 'package:secure_sign/home.dart';
import 'package:secure_sign/authentication/login/login_request.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatelessWidget {
   Onboarding({Key? key}) : super(key: key);
  final List<Introduction> list = [
        Introduction(
      title: 'Protect your Data',
      subTitle: 'Keep your data private and confidential with 2FA',
      imageUrl: 'assets/images/undraw_personal_information_png.png',
    ),
    Introduction(
      title: 'Safeguard digital assets',
      subTitle: 'Prevent unauthorized access to your digital assets',
      imageUrl: 'assets/images/undraw_safe_re_kiil.png',
    ),
    Introduction(
      title: 'Authenticator with 2FA',
      subTitle: 'effortless security with a seamless user experience',
      imageUrl: 'assets/images/undraw_two_factor_authentication_namy.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreenOnboarding(
        backgroudColor: const Color(0xFFf9f9f9),
        foregroundColor: const Color(0xFFFFAA00),
        introductionList: list,
        onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            // builder: (context) =>  const Home(),
            // builder: (context) => HomePage(),
            // builder: (context) => DashboardPage(),
            // builder: (context) => const OtpScreen(),
            builder: (context) => const Register(),
            // builder: (context) => LoginPage(),
            // builder: (context) => LoginRequestPage(),
          ),
        ),
        skipTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}