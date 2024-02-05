// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/views/news_title.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: const NewsTitle(),
          );
        });
  }
}
