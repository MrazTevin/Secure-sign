import 'package:flutter/material.dart';
import 'package:secure_sign/utils/constants.dart';
import 'package:secure_sign/authentication/login/login_form.dart';
import 'package:secure_sign/authentication/login/login_header_widget.dart';
import 'package:secure_sign/authentication/login/login_footer_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // device height
    return SafeArea(
      child: Scaffold(
        // backgroundColor: tPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
             padding: EdgeInsets.all(tDefaultSize),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),
                /* Form section */
                const LoginForm(),
                LoginFooterWidget()
              ],
             ),
          ),      
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             SizedBox(height: 20.0),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement login functionality here
//               },
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }