import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:newsapp/model/newsProvider.dart';
import 'package:newsapp/model/news_model.dart';
import 'package:provider/provider.dart';

import '../widgets/swap_card.dart';

class Items extends StatefulWidget {
  static const routeName = "/item";
//url
// title

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  var isLoading = false;
  List<NewsModel> items = [];
  var args;
  @override
  void initState() {
    super.initState();
    final news = Provider.of<NewsProvider>(context, listen: false);
    Future.delayed(Duration.zero, () {
      setState(() {
        args = ModalRoute.of(context).settings.arguments;
        print(args);
      });
    }).then((value) => getData(news));
  }

  void getData(news) async {
    print(args);

    final url =
        'https://newsapi.org/v2/everything?language=en&apiKey=13f96319dae94b739e554e8dad8d676a&q=${args}';
    setState(() {
      isLoading = true;
    });
    await news.fetchNewsData(url);
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
        title: args == null ? "dummy" : args,
      ),
    );
  }
}
