import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    this.imageColor,
    this.heightBetween,
    required this.image,
    required this.title,
    required this.subtitle,
    this.imageHeight = 0.2,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  final Color? imageColor;
  final double? heightBetween;
  final String image, title, subtitle;
  final double imageHeight;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children:[
         Image.asset(
        image,
        height: size.height * 0.2,
        color: imageColor,
        ),
        SizedBox(height: heightBetween),
        Text(title, textAlign: textAlign, style: Theme.of(context).textTheme.headlineMedium,),
        Text(subtitle, textAlign:textAlign, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}