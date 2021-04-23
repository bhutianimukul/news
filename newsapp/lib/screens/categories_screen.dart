import 'package:flutter/material.dart';
import 'package:newsapp/model/newsProvider.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
    void initState() {
      Provider.of<NewsProvider>(context , listen: false).fetchCategoryData();
      // TODO: implement initState
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            child: Text('Apple'),
            onTap: (){



            },
          )
        ],
      )
    );
  }
}