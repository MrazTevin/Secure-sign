import 'package:flutter/material.dart';
import 'package:secure_sign/utils/constants.dart';
import 'package:secure_sign/utils/text_form_field.dart';
import 'package:secure_sign/widgets/form_header_widget.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                 const SizedBox(height: tDefaultSize * 4,),
                 const FormHeaderWidget(
                  image: 'assets/images/undraw_Forgot_password.png',
                  title: 'Forgot Password ?',
                  subtitle: 'Click one of the options below to reset',  
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: tFormHeight),
                Form(
                  child: Column (
                    children: [
                      const CustomTextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          label: 'E-mail',
                          hintText: 'E-mail',
                          prefixIcon: Icons.mail_outline_rounded,
                        ),
                        const SizedBox(height: tFormHeight - 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const  EdgeInsets.symmetric(vertical: tButtonHeight),
                              foregroundColor: tWhiteColor,
                              backgroundColor: tSecondaryColor,
                              shape: const RoundedRectangleBorder(),
                              side: const BorderSide(color: tSecondaryColor),
                            ),
                            onPressed: () {},
                             child: const Text('Send')
                             ),
                        ),
                    ],
                    )
                  ),
        
              ],
            ),
          ),
        )
      ),
    );
  }
}