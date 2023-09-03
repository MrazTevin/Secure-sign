import 'package:flutter/material.dart';
import 'package:secure_sign/forget_password/forget_password_mail.dart';
import 'package:secure_sign/utils/constants.dart';
import 'package:secure_sign/forget_password/forget_password_btn_widget.dart'; 
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_outlined),
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: tFormHeight),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null, 
                  icon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight -20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                   builder: (context) => Container(
                    padding: EdgeInsets.all(tDefaultSize),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Select one!', style: Theme.of(context).textTheme.headlineLarge,),
                        Text('Choose your preferred option', style: Theme.of(context).textTheme.headlineSmall,),
                        // const SizedBox(
                        //   height: 30.0,
                        // ),
                        const SizedBox(height: 30.0),
                        ForgetPasswordBtnWidget(
                          btnicon: Icons.email_outlined,
                          title: 'Email',
                          subtitle: 'We will send link to your email',
                          press: (){Get.to(() => const ForgetPasswordMailScreen());},
                        ),
                        const SizedBox(height: 20.0),
                        ForgetPasswordBtnWidget(
                          btnicon: Icons.mobile_friendly_rounded,
                          title: 'Phone',
                          subtitle: 'Use your phone to reset',
                          press: (){},
                          )
                      ],
                      ),
                   ),
                   );
              }, 
              child: const Text('Forgot Password?'),)
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                   style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    foregroundColor: tWhiteColor,
                    backgroundColor: tSecondaryColor,
                    side: BorderSide(color: tSecondaryColor),
                    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                  ),
                  onPressed: (){}, 
                  child:  Text('Login'.toUpperCase())
                  ),
              ),
          ],
        ),
      ),
    );
  }
}

