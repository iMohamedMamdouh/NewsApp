import 'package:demo_newsapp/models/category_model.dart';
import 'package:demo_newsapp/widgets/row_card.dart';
import 'package:flutter/material.dart';

class categoryiesListView extends StatelessWidget {
  const categoryiesListView({
    super.key,
  });

  final List<Category_Model> categories = const [
    Category_Model(
      img: 'assets/business.avif',
      title: 'Business',
    ),
    Category_Model(
      img: 'assets/entertaiment.avif',
      title: 'Entertainment',
    ),
    Category_Model(
      img: 'assets/health.avif',
      title: 'Health',
    ),
    Category_Model(
      img: 'assets/science.avif',
      title: 'Science',
    ),
    Category_Model(
      img: 'assets/sports.avif',
      title: 'Sports',
    ),
    Category_Model(
      img: 'assets/technology.jpeg',
      title: 'Technology',
    ),
    Category_Model(
      img: 'assets/general.avif',
      title: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return MyCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
