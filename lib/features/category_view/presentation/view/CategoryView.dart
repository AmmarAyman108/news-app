import 'package:flutter/material.dart';
import 'package:news_app/features/category_view/presentation/view/widgets/category_view_details.dart';
// ignore: must_be_immutable
class CategoryView extends StatelessWidget {
  CategoryView({super.key, required this.category});
  // ignore: non_constant_identifier_names
  String category;

  @override
  Widget build(BuildContext context) {
    return CategoryViewDetails(Category: category);
  }
}
