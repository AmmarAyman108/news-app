import 'package:dio/dio.dart';
import 'package:news_app/Models/news_model.dart';

class NewsService {
  Future<List<NewsModel>> GetNews({required String Category}) async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=52fecc9600424b50b139e4d884b54f95&category=$Category');
      Map<String, dynamic> jsonData = response.data;
      List articles = jsonData['articles'];
      // ignore: non_constant_identifier_names

      List<NewsModel> NewsModleData = [];
      for (var i = 0; i < articles.length; i++) {
        NewsModleData.add(NewsModel.fromJson(articles[i]));
      }
      return NewsModleData;
    } on DioException catch (e) {
      String message = e.response?.data['error']['message'] ?? 'try later';
      throw Exception(message);
    } catch (e) {
      throw Exception('try later');
    }
  }
}
