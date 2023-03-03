import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {

  final name;

  CategoryName({this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,style: TextStyle(
      color: Colors.grey,
    ),
    );
  }
}