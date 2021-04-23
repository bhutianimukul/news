import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:newsapp/model/newsProvider.dart';
import 'package:newsapp/model/news_model.dart';
import 'package:provider/provider.dart';

class GlobalNewsScreen extends StatefulWidget {
  @override
  _GlobalNewsScreenState createState() => _GlobalNewsScreenState();
}

class _GlobalNewsScreenState extends State<GlobalNewsScreen> {
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
    await news.fetchCategoryData();
    items = news.items;
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: TinderSwapCard(
          orientation: AmassOrientation.RIGHT,
          stackNum: 4,
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height * .9,
          minHeight: MediaQuery.of(context).size.height * .5,
          minWidth: MediaQuery.of(context).size.width * 0.5,
          cardBuilder: (BuildContext context, int index) => Card(
            color: Colors.blueAccent,
            child: Text(items[index].title),
          ),
          totalNum: items.length,
        ),
      ),
    );
  }
}
