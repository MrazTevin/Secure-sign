import 'package:secure_sign/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:secure_sign/authentication/registration/signup_header_widget.dart';
import 'package:secure_sign/utils/text_field_theme.dart';
import 'package:secure_sign/utils/theme.dart';
import 'package:secure_sign/authentication/registration/signup_form_widget.dart';
// import 'package:secure_sign/authentication/registration/signup_form.dart';
// import 'package:secure_sign/authentication/registration/signup_footer_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                SignUpHeaderWidget(
                  size: MediaQuery.of(context).size,
                  image: 'assets/images/undraw_Setup_wizard.png',
                  title: 'Onboard with Secure Sign',
                  subtitle: 'Create your profile and keep your digital assets secure',
                ),
                const SignUpFormWidget(),
                Column(
                children: [
                  const Text("OR"),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon (
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: tSecondaryColor,
                        side: BorderSide(color: tSecondaryColor),
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                      ),
                      onPressed: () {} ,
                      icon: Image.asset('assets/images/google_logo.png', height: 24.0,),
                      label:Text('Sign-in with Google'.toUpperCase()),
                    )
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
                )
                // SignUpForm(),
                // SignUpFooterWidget() 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

