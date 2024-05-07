import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/widgets/custom_error_widget.dart';
import 'package:news_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:news_app/core/utils/widgets/news_list_view.dart';
import 'package:news_app/features/category_view/presentation/manager/category_cubit/category_news_cubit.dart';

class CategoryNewsList extends StatelessWidget {
  // ignore: non_constant_identifier_names
  CategoryNewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryNewsCubit, CategoryNewsState>(
        builder: (context, state) {
      if (state is CategoryNewsFailureState) {
        return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(errorMessage: state.errorMessage));
      } else if (state is CategoryNewsLoadedState) {
        return NewsListView(
          NewsModelData: state.news,
        );
      } else {
        return SliverFillRemaining(
            hasScrollBody: false, child: CustomLoadingIndicator());
      }
    });
  }
}
