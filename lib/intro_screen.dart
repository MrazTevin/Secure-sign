import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
// import 'package:secure_sign/home.dart';
import 'package:secure_sign/authentication/login/otp_screen.dart';
import 'package:secure_sign/authentication/registration/register_screen.dart';
import 'package:secure_sign/authentication/login/login_screen.dart';
import 'package:secure_sign/authentication/registration/signup.dart';
import 'package:secure_sign/home.dart';
import 'package:secure_sign/authentication/login/login_request.dart';
import 'package:secure_sign/project_screens/welcome_screen.dart';
import 'package:secure_sign/utils/theme.dart';
import 'package:secure_sign/forget_password/forget_password_mail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: Onboarding(),
      initialRoute: '/', // Add a comma here
      getPages: [
        GetPage(name: '/', page: () => Onboarding()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/register', page: () => const Register()),
        GetPage(name: '/signup', page: () => const SignUpScreen()),
        GetPage(name: '/otp', page: () => const OtpScreen()),
        GetPage(name: '/welcome', page: () => const WelcomeScreen()),
        GetPage(name: '/loginrequest', page: () =>  LoginRequestPage()),
        GetPage(name: '/home', page: () => const Home()),
        GetPage(name: '/forgotpassword', page: () => const ForgetPasswordMailScreen()),
      ],
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
    return SafeArea(
      child: Scaffold(
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
              // builder: (context) => const Register(),
              // builder: (context) => LoginPage(),
              // builder: (context) => LoginRequestPage(),
              builder: (context) => const WelcomeScreen(),
            ),
          ),
          skipTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}