import 'package:dartz/dartz.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<NewsModel>>> getGeneralNews();
}
