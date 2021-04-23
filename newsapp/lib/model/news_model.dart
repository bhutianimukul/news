import 'package:flutter/material.dart';

class NewsModel with ChangeNotifier {
  final String url;
  final String imageUrl;
  final String title;
  final String description;
  final String author;
  final DateTime publishedAt;

  NewsModel({
    this.publishedAt,
    this.url,
    this.imageUrl,
    this.title,
    this.description,
    this.author,
  });
}
