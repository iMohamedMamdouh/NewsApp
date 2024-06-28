import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  void getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey=f109081e3e90474a9ae28d5ea68717a7#');
    print(response);
  }

  void getSportsNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey=f109081e3e90474a9ae28d5ea68717a7#');
  }
}
