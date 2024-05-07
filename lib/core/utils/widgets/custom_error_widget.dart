import 'package:flutter/material.dart';
import 'package:news_app/core/utils/style.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        textAlign: TextAlign.center,
        style: Styles.textStyle18
            .copyWith(color: const Color.fromARGB(255, 255, 17, 0)),
      ),
    );
  }
}
