import 'package:flutter/material.dart';
import 'package:news_app/core/utils/theme.dart';
import 'package:news_app/core/utils/style.dart';
import 'package:news_app/features/category_view/presentation/view/widgets/back_button.dart';
import 'package:news_app/features/category_view/presentation/view/widgets/category_news_list.dart';

class CategoryViewDetails extends StatelessWidget {
  const CategoryViewDetails({
    super.key,
    required this.Category,
  });

  final String Category;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Scaffold(
      appBar: AppBar(
        leading: backButton(color: Colors.white),
        title: Text(
          Category,
          style: Styles.textStyle28,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [CategoryNewsList()],
        ),
      ),
    ));
  }
}
