import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:newsapp/model/newsProvider.dart';
import 'package:newsapp/model/news_model.dart';
import 'package:provider/provider.dart';

import '../widgets/swap_card.dart';

class TrendingScreen extends StatefulWidget {
  @override
  _TrendingScreenState createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  var isLoading = false;
  List<NewsModel> items = [];

  @override
  void initState() {
    final news = Provider.of<NewsProvider>(context, listen: false);
    getData(news);

    super.initState();
  }

  void getData(news) async {
    setState(() {
      isLoading = true;
    });
    await news.fetchNewsData(
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=13f96319dae94b739e554e8dad8d676a');
    items = news.items;
    setState(() {
      isLoading = false;  
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: SwapCard(
        items: items,
        title: 'Trending Daily',
      ),
    );
  }
}
