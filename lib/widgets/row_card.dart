import 'package:demo_newsapp/models/category_model.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.category});

  final Category_Model category;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              offset: Offset(4, 4), // changes position of shadow
            ),
            BoxShadow(
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
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            category.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
