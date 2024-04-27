import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';
import 'package:news_app/Services/news_service.dart';
import 'package:news_app/Widgets/news_list_view.dart';
import 'package:news_app/Widgets/text.dart';

// ignore: must_be_immutable
class NewsListFuture extends StatefulWidget {
  // ignore: non_constant_identifier_names
  NewsListFuture({super.key, required this.Category});
  // ignore: non_constant_identifier_names
  String Category;

  @override
  State<NewsListFuture> createState() => _NewsListFutureState();
}

class _NewsListFutureState extends State<NewsListFuture> {
  late Future<List<NewsModel>> future;
  @override
  void initState() {
    super.initState();
    future = NewsService().GetNews(Category: widget.Category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            NewsModleData: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: const Center(
                child: text(
                  title: 'No internet Connection',
                  color: Colors.red,
                ),
              ),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
