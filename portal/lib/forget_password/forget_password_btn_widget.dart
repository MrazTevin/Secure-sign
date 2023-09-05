import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    required this.btnicon,
    required this.title,
    required this.subtitle,
    required this.press,
    Key? key,
  }) : super(key: key);

  final IconData btnicon;
  final String title, subtitle;
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Icon(btnicon, size: 60.0,),
            const SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headline6,),
                Text(subtitle, style: Theme.of(context).textTheme.bodyText2,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}