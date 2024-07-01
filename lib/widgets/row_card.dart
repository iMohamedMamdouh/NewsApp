import 'package:demo_newsapp/models/category_model.dart';
import 'package:demo_newsapp/pages/category_view.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.category});

  final Category_Model category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.title,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 120,
          width: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(4, 4), // changes position of shadow
              ),
              const BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(-4, -4), // changes position of shadow
              ),
            ],
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.img),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              category.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
