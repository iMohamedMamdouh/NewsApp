import 'package:demo_newsapp/widgets/row_card.dart';
import 'package:flutter/material.dart';

class categoryiesListView extends StatelessWidget {
  const categoryiesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const MyCard();
        },
      ),
    );
  }
}
