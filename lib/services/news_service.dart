import 'package:demo_newsapp/models/article_model.dart';
import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/everything?q=bitcoin&apiKey=f109081e3e90474a9ae28d5ea68717a7");

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
