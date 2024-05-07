import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class backButton extends StatelessWidget {
   backButton({
    super.key,
    required this.color
  });
  Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Icons.arrow_back_ios_new,
          size: 30,
          color: color,
        ));
  }
}
