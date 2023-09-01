import 'package:flutter/material.dart';
import 'package:secure_sign/utils/constants.dart';


class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final Size size;
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
         Image.asset(
        image,
        height: size.height * 0.2,
        ),
          Text(title, style: Theme.of(context).textTheme.headlineMedium,),
           Text(subtitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
