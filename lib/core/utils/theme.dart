import 'package:flutter/material.dart';

// ignore: camel_case_types
class GradientBackground extends StatelessWidget {
  const GradientBackground({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 28, 61),
            Color.fromARGB(255, 1, 63, 113),
            Color.fromARGB(255, 2, 81, 146),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
