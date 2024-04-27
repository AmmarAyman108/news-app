import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/Widgets/category.dart';

// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<CategoryModel> ListCategoryModelData = [
    CategoryModel(title: "Health", image: 'assets/health.avif'),
    CategoryModel(title: "Technology", image: 'assets/technology.jpeg'),
    CategoryModel(title: "Sports", image: 'assets/sports.avif'),
    CategoryModel(title: "Science", image: 'assets/science.avif'),
    CategoryModel(title: "Entertainment", image: 'assets/entertaiment.avif'),
    CategoryModel(title: "Business", image: 'assets/business.avif'),
    CategoryModel(title: "General", image: 'assets/general.avif'),
  ];

  CategoryListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: ListCategoryModelData.length,
            itemBuilder: (context, index) => Category(
                  CategoryModelData: ListCategoryModelData[index],
                )),
      ),
    );
  }
}
