import 'package:flutter/material.dart';
import 'package:news_app/features/category_view/data/models/category_model.dart';
import 'package:news_app/features/category_view/presentation/view/widgets/category.dart';

// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<CategoryModel> ListCategoryModelData = [
    CategoryModel(title: "Health", image: 'assets/images/healthh.jpg'),
    CategoryModel(title: "Technology", image: 'assets/images/technologyy.jpg'),
    CategoryModel(title: "Sports", image: 'assets/images/sport.jpg'),
    CategoryModel(title: "Science", image: 'assets/images/science.jpg'),
    CategoryModel(
        title: "Entertainment", image: 'assets/images/entertaiment.avif'),
    CategoryModel(title: "Business", image: 'assets/images/buss.jpg'),
    CategoryModel(title: "General", image: 'assets/images/general.jpg'),
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
            category: ListCategoryModelData[index],
          ),
        ),
      ),
    );
  }
}
