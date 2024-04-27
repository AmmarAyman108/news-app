import 'package:flutter/material.dart';
import 'package:news_app/Widgets/category_list_view.dart';
import 'package:news_app/Widgets/news_list_future.dart';
import 'package:news_app/Widgets/theme.dart';
import 'package:news_app/Widgets/text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return theme(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              text(title: 'NEWS ', fontSize: 28, fontWeight: FontWeight.bold),
              text(
                  title: 'Cloud',
                  color: Colors.orangeAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)
            ],
          ),
        ),
        body: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: CategoryListView(),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 23),
              child: text(
                  title: 'Let\'s enjoy the latest news ',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          NewsListFuture(
            Category: 'general',
          )
        ]),
      ),
    );
  }
}
