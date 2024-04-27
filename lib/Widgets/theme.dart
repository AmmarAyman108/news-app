import 'package:flutter/material.dart';

// ignore: camel_case_types
class theme extends StatelessWidget {
  const theme({super.key,required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 0, 28, 61),
          Color.fromARGB(255, 2, 81, 146),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: child);
  }
}
