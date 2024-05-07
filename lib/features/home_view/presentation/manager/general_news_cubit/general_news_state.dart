part of 'general_news_cubit.dart';

@immutable
sealed class GeneralNewsState {}

final class GeneralNewsInitialState extends GeneralNewsState {}

final class GeneralNewsLoadingState extends GeneralNewsState {}

final class GeneralNewsLoadedState extends GeneralNewsState {
  final List<NewsModel> news;
  GeneralNewsLoadedState({required this.news});
}

final class GeneralNewsFailureState extends GeneralNewsState {
  final String errorMessage;
  GeneralNewsFailureState({required this.errorMessage});
}
