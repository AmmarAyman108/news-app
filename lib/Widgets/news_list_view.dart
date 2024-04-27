import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';
import 'package:news_app/Widgets/news.dart';

// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.NewsModleData});

  List<NewsModel> NewsModleData;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: NewsModleData.length,
        (context, index) => News(NewsModleData: NewsModleData[index]),
      ),
    );
  }
}
