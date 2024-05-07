import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/category_view/data/models/category_model.dart';
import 'package:news_app/features/category_view/presentation/manager/category_cubit/category_news_cubit.dart';
import 'package:news_app/features/category_view/presentation/view/CategoryView.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => CategoryNewsCubit()
                ..getCategoryNews(category: category.title),
              child: CategoryView(category: category.title),
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 110,
        width: 170,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill)),
        child: Text(
          category.title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
        ),
      ),
    );
  }
}
