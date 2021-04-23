import 'package:flutter/material.dart';
import 'package:newsapp/model/news_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsProvider with ChangeNotifier {
  List<NewsModel> _items = [];
  List<NewsModel> get items {
    return [..._items];
  }

  Future<void> fetchNewsData(final url) async {
    _items.clear();

    final response = await http.get(Uri.parse(url));
    final jsonData = json.decode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null &&
            element["url"] != null &&
            element["title"] != null &&
            element["description"] != null) {
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

    notifyListeners();
    print(items.length);
  }
}
