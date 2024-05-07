import 'package:dartz/dartz.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/core/errors/failures.dart';

abstract class CategoryRepo {
  Future<Either<Failure, List<NewsModel>>> getCategoryNews(
      {required String category});
}
