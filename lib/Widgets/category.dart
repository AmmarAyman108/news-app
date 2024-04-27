import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/Views/CategoryView.dart';

class Category extends StatelessWidget {
  const Category(
      {
      // ignore: non_constant_identifier_names
      super.key,
      // ignore: non_constant_identifier_names
      required this.CategoryModelData});
  // ignore: non_constant_identifier_names
  final CategoryModel CategoryModelData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CategoryView(Category: CategoryModelData.title),
      )),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 110,
        width: 170,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(CategoryModelData.image), fit: BoxFit.fill)),
        child: Text(
          CategoryModelData.title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
        ),
      ),
    );
  }
}
