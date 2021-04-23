import 'package:flutter/material.dart';
import 'package:newsapp/model/news_model.dart';

class NewsScreen extends StatelessWidget {
  final List<NewsModel> trend = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('news')),
    );
  }
}
