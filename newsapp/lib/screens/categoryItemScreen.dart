import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:newsapp/model/newsProvider.dart';
import 'package:newsapp/model/news_model.dart';
import 'package:provider/provider.dart';

import '../widgets/swap_card.dart';

class Business extends StatefulWidget {
  static const routeName = '/business';
  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
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
        'https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'BUSINESS\'S DAILY',
      ),
    );
  }
}

class Tesla extends StatefulWidget {
  static const routeName = '/tesla';
  @override
  _TeslaState createState() => _TeslaState();
}

class _TeslaState extends State<Tesla> {
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
        'https://newsapi.org/v2/everything?q=tesla&from=2021-03-23&sortBy=publishedAt&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'TESLA\'S DAILY',
      ),
    );
  }
}

class Apple extends StatefulWidget {
  static const routeName = '/apple';

  @override
  _AppleState createState() => _AppleState();
}

class _AppleState extends State<Apple> {
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
        'https://newsapi.org/v2/everything?q=apple&from=2021-04-22&to=2021-04-22&sortBy=popularity&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'APPLE\'S DAILY',
      ),
    );
  }
}

class GlobalNews extends StatefulWidget {
  static const routeName = '/global';
  @override
  _GlobalNewsState createState() => _GlobalNewsState();
}

class _GlobalNewsState extends State<GlobalNews> {
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
        title: 'BUSINESS\'S DAILY',
      ),
    );
  }
}

class Technology extends StatefulWidget {
  static const routeName = '/tech';
  @override
  _TechnologyState createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
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
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'TECH TIME',
      ),
    );
  }
}

class Journal extends StatefulWidget {
  static const routeName = '/journal';

  _JournalState createState() => _JournalState();
}

class _JournalState extends State<Journal> {
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
        'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'JOURNAL\'s DAILY',
      ),
    );
  }
}

class Bitcoin extends StatefulWidget {
  static const routeName = '/Business';

  @override
  _BitcoinState createState() => _BitcoinState();
}

class _BitcoinState extends State<Bitcoin> {
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
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'BITCOIN\'s DAILY',
      ),
    );
  }
}

class Sports extends StatefulWidget {
  static const routeName = '/sports';
  @override
  _SportsState createState() => _SportsState();
}

class _SportsState extends State<Sports> {
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
        'https://newsapi.org/v2/top-headlines?country=in&category=sports&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'SPORTS\'s DAILY',
      ),
    );
  }
}

class Entertainment extends StatefulWidget {
  static const routeName = '/ent';
  _EntertainmentState createState() => _EntertainmentState();
}

class _EntertainmentState extends State<Entertainment> {
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
        'https://newsapi.org/v2/top-headlines?country=in&category=entertainment&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'ENTERTAINMENT\'s DAILY',
      ),
    );
  }
}

class Health extends StatefulWidget {
  static const routeName = '/health';
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
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
        'https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'HEALTH\'s TAB',
      ),
    );
  }
}

class Science extends StatefulWidget {
  @override
  static const routeName = '/science';
  _ScienceState createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
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
        'https://newsapi.org/v2/top-headlines?country=in&category=science&apiKey=13f96319dae94b739e554e8dad8d676a');
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
        title: 'SCIENCE\ TAB',
      ),
    );
  }
}
