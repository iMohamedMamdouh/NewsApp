import 'package:demo_newsapp/pages/home_page.dart';
import 'package:demo_newsapp/services/news_service.dart';
// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  NewsService(Dio()).getNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
