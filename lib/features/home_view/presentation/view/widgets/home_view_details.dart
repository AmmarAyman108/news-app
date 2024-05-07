import 'package:flutter/material.dart';
import 'package:news_app/features/home_view/presentation/view/widgets/category_list_view.dart';
import 'package:news_app/core/utils/widgets/general_news_list.dart';
import 'package:news_app/core/utils/theme.dart';
import 'package:news_app/core/utils/style.dart';

class HomeViewDetails extends StatelessWidget {
  const HomeViewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NEWS ',
                style: Styles.textStyle28,
              ),
              Text(
                'Cloud',
                style: Styles.textStyle28.copyWith(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoryListView()),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 23),
                  child: Text(
                    'Let\'s enjoy the latest news ',
                    style: Styles.textStyle25,
                  ),
                ),
              ),
              GeneralNewsList()
            ],
          ),
        ),
      ),
    );
  }
}
