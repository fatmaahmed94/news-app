// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class Category_card extends StatelessWidget {
  Category_card({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 160,
        height: 85,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.imageAssetUrl),
            ),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          category.categoryName,
          style: TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }
}
