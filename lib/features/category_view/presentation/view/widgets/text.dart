import 'package:flutter/material.dart';

// ignore: camel_case_types
class text extends StatelessWidget {
  const text({
    super.key,
    required this.title,
    this.color = Colors.white,
    this.fontSize = 24,
    this.fontWeight = FontWeight.normal,
  });
  final String title;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      title,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
