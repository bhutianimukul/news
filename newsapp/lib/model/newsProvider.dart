import 'package:flutter/material.dart';
import 'package:newsapp/model/news_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsProvider with ChangeNotifier {
  List<NewsModel> _items = [];
  List<NewsModel> get items {
    return [..._items];
  }

  Future<void> fetchCategoryData() async {
    final url =
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=13f96319dae94b739e554e8dad8d676a';
    final response = await http.get(Uri.parse(url));
    final jsonData = json.decode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element["url"] != null) {
          _items.add(NewsModel(
              author: element["author"],
              publishedAt: DateTime.parse(element['publishedAt']),
              url: element["url"],
              title: element["title"],
              imageUrl: element['urlToImage'],
              description: element['description']));
        }
      });
    }

    print(items.length);
    notifyListeners();
  }
}
