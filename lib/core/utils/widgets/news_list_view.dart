import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/core/utils/widgets/news.dart';

// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.NewsModelData});

  List<NewsModel> NewsModelData;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: NewsModelData.length,
        (context, index) => News(NewsModelData: NewsModelData[index]),
      ),
    );
  }
}
