import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final InputDecoration decoration;
  final String label;
  final String hintText;
  final IconData prefixIcon;

  const CustomTextFormField({
    Key? key,
    required this.decoration,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration.copyWith(
        labelText: label,
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
