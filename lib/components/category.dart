import 'package:flutter/material.dart';

import '../models/categories.dart';

class CategoryCard extends StatelessWidget {
  // String image;
  // final function;
  // CategoryCard({required this.image, this.function});

 final Categories categories;
final function;

 CategoryCard({required this.categories, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: 50,
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(
                categories.image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
