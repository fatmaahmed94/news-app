import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  final List<CategoryModel> categories = [
    CategoryModel(
        imageAssetUrl: "assets/images/entertaiment.avif",
        categoryName: "entertaiment"),
    CategoryModel(
        imageAssetUrl: "assets/images/health.avif", categoryName: "health"),
    CategoryModel(
        imageAssetUrl: "assets/images/science.avif", categoryName: "science"),
    CategoryModel(
        imageAssetUrl: "assets/images/sports.jpg", categoryName: "sports"),
    CategoryModel(
        imageAssetUrl: "assets/images/technology.jpeg",
        categoryName: "technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Category_card(
              category: categories[index],
            );
          }),
    );
  }
}
