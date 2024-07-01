import 'package:demo_newsapp/models/article_model.dart';
import 'package:demo_newsapp/widgets/news_tile.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 22.0, right: 8.0, left: 8.0),
            child: NewsTile(articleModel: articles[index]),
          );
        },
      ),
    );
  }
}
