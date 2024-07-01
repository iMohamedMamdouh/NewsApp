// ignore_for_file:depend_on_referenced_packages, file_names
import 'package:demo_newsapp/models/article_model.dart';
import 'package:demo_newsapp/services/news_service.dart';
import 'package:demo_newsapp/widgets/news_listview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  dynamic request;
  @override
  void initState() {
    super.initState();
    request = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: request,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text(
              'Articles not found',
            ),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
    // return isLoading
    //     ? const SliverFillRemaining(
    //         hasScrollBody: false,
    //         child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? NewsListView(articles: articles)
    //         : const SliverFillRemaining(
    //             child: Center(
    //               child: Text("Articles not found"),
    //             ),
    //           );
  }
}
