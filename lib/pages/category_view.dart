import 'package:demo_newsapp/widgets/categoryies_listview.dart';
import 'package:demo_newsapp/widgets/news_listviewBuilder.dart';
import 'package:demo_newsapp/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: TopBar(category: 'N E W S'),
          ),
          const SliverToBoxAdapter(
            child: categoryiesListView(),
          ),
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
