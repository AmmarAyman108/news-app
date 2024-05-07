import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/widgets/news_list_view.dart';
import 'package:news_app/core/utils/widgets/custom_error_widget.dart';
import 'package:news_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:news_app/features/home_view/presentation/manager/general_news_cubit/general_news_cubit.dart';

// ignore: must_be_immutable
class GeneralNewsList extends StatelessWidget {
  // ignore: non_constant_identifier_names
  GeneralNewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralNewsCubit, GeneralNewsState>(
        builder: (context, state) {
      if (state is GeneralNewsFailureState) {
        return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(errorMessage: state.errorMessage));
      } else if (state is GeneralNewsLoadedState) {
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
