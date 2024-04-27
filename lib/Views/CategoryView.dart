import 'package:flutter/material.dart';
import 'package:news_app/Widgets/back_button.dart';
import 'package:news_app/Widgets/news_list_future.dart';
import 'package:news_app/Widgets/theme.dart';
import 'package:news_app/Widgets/text.dart';

// ignore: must_be_immutable
class CategoryView extends StatelessWidget {
  CategoryView({super.key, required this.Category});
  // ignore: non_constant_identifier_names
  String Category;

  @override
  Widget build(BuildContext context) {
    return theme(
        child: Scaffold(
      appBar: AppBar(
        leading: backButton(color: Colors.white),
        title: text(title: Category, fontWeight: FontWeight.bold, fontSize: 28),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          NewsListFuture(
            Category: Category,
          )
        ],
      ),
    ));
  }
}
