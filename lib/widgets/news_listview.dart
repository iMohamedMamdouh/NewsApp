import 'package:demo_newsapp/models/article_model.dart';
import 'package:demo_newsapp/widgets/news_tile.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  NewsListView({
    super.key,
  });

  final List<ArticleModel> articles = [
    ArticleModel(
      image:
          'https://ichef.bbci.co.uk/live-experience/cps/624/cpsprodpb/vivo/live/images/2024/6/19/9cedea53-634c-4de9-b427-c044155d089c.jpg',
      title:
          'Pact with North Korea will protect us both from aggression, says Putin',
      subTitle:
          'Putin was given a red-carpet welcome by Kim Jong Un when he touched down on the tarmac before dawn. And the North Korean leader was there to wave him off when he departed a short while ago.',
    ),
    ArticleModel(
      image:
          'https://ichef.bbci.co.uk/live-experience/cps/1024/cpsprodpb/14B37/production/_131819748_gettyimages-1813374900.jpg',
      title:
          'Premier League: Arsenal move top after Havertz winner at Brentford - reaction',
      subTitle:
          'The headline is Arsenal taking advantage of Manchester City and Liverpool\'s draw to go top of the Premier League.',
    ),
    ArticleModel(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOJIzZeedytiHpzHZEkNCrCBeXwjR1ZI04kZl5FI7Lofi_o3u6pjglC_m5AkOlMAOzMws&usqp=CAU',
      title: 'Breaking News',
      subTitle: 'test',
    ),
    ArticleModel(
      image:
          'https://www.befunky.com/images/prismic/5ddfea42-7377-4bef-9ac4-f3bd407d52ab_landing-photo-to-cartoon-img5.jpeg?auto=avif,webp&format=jpg&width=863',
      title: 'hello',
      subTitle: 'test',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: NewsTile(
                  articleModel: articles[index],
                ),
              );
            }),
      ),
    );
  }
}
