import 'package:flutter/material.dart';
import 'package:secure_sign/utils/constants.dart';


class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
         Image.asset(
        'assets/images/undraw_Access_account.png',
        height: size.height * 0.2,
        ),
          Text('Welcome back to Secure Sign', style: Theme.of(context).textTheme.headlineMedium,),
           Text('Access your account with 2FA', style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
