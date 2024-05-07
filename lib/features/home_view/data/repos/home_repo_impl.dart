import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/core/utils/constant.dart';
import 'package:news_app/core/errors/failures.dart';
import 'package:news_app/core/utils/api_method/api_methods/api_methods.dart';
import 'package:news_app/features/home_view/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  Future<Either<Failure, List<NewsModel>>> getGeneralNews() async {
    try {
      var jsonData = await Api(
          dio: Dio(BaseOptions(
        baseUrl: Settings.baseUrl,
      ))).get(queryParameters: {
        "country": "us",
        "category": "general",
        "apiKey": Settings.apiKey,
      }, endPoint: 'top-headlines');
      List<NewsModel> NewsModelData = [];
      NewsModelData = (jsonData['articles'] as List)
          .map((data) => NewsModel.fromJson(data))
          .toList();
      return right(NewsModelData);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
