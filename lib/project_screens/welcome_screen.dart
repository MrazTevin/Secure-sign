import 'package:flutter/material.dart';
import 'package:secure_sign/utils/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height; // device height
    return Scaffold(
      backgroundColor: tPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
             Container(
            height: height * 0.6, // Set the height here
            child: Image.asset('assets/images/undraw_Celebration_re_kc9k.png'),
          ),
            Column(
              children: [
                Text('Welcome to Secure Sign', style: Theme.of(context).textTheme.headlineMedium,),
                 Text('Keep your digital assets secure and safe with 2FA', style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
            Row(
              children: [
                Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    foregroundColor: tSecondaryColor,
                    side: BorderSide(color: tSecondaryColor),
                    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                  ),
                  child: Text('Login'.toUpperCase()),
                ),
              ),
              SizedBox(width: 10.0,),
               Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    foregroundColor: tWhiteColor,
                    backgroundColor: tSecondaryColor,
                    side: BorderSide(color: tSecondaryColor),
                    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                  ),
                  child: Text('Register'.toUpperCase()),
                ),
              ),
              ],
              )
          ],
        ),
      )
    );
  }
}