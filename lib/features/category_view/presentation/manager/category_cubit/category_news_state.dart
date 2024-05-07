part of 'category_news_cubit.dart';

@immutable
sealed class CategoryNewsState {}

final class CategoryNewsInitial extends CategoryNewsState {}
final class CategoryNewsLoadingState extends CategoryNewsState {}


final class CategoryNewsLoadedState extends CategoryNewsState {
  final List<NewsModel> news;
  CategoryNewsLoadedState({required this.news});
}

final class CategoryNewsFailureState extends CategoryNewsState {
  final String errorMessage;
  CategoryNewsFailureState({required this.errorMessage});
}
