import 'package:flutter/material.dart';
import 'package:secure_sign/utils/constants.dart';


class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Don\'t have an account?'),
        const SizedBox(height: 20.0),
        SizedBox (
          width: double.infinity,
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(),
              foregroundColor: tSecondaryColor,
              side: BorderSide(color: tSecondaryColor),
              padding: EdgeInsets.symmetric(vertical: 10.0),
            ),
            icon: Image.asset('assets/images/google_logo.png', height: 24.0,),
            onPressed: () {},
            label: Text('Sign-in with Google'.toUpperCase()),
          ),
        ),
        const SizedBox(height: 20.0),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(text: 'Already have an account? ',
            style: Theme.of(context).textTheme.bodyMedium,
            children: const [
              TextSpan(
                text: 'Sign-in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: tSecondaryColor,
                ),
              ),
            ],
            ),
            ),
        )
      ],
    );
  }
}