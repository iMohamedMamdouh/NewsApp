// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:demo_newsapp/models/article_model.dart';
import 'package:demo_newsapp/services/news_service.dart';
import 'package:demo_newsapp/widgets/news_tile.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];

  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NewsTile(articleModel: articles[index]),
                );
              },
            ),
          );
  }
}
