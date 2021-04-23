import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'categoryItemScreen.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CategoryItem> item = [
      CategoryItem('BUSINESS',
          'https://images.unsplash.com/39/lIZrwvbeRuuzqOoWJUEn_Photoaday_CSD%20(1%20of%201)-5.jpg?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
          () {
        Navigator.pushNamed(context, Business.routeName);
      }),
      CategoryItem('SPORTS',
          'https://images.unsplash.com/photo-1530549387789-4c1017266635?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHNwb3J0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          () {
        Navigator.pushNamed(context, Sports.routeName);
      }),
      CategoryItem('ENTERTAINMENT',
          'https://images.unsplash.com/photo-1616469829941-c7200edec809?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGVudGVydGFpbm1lbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          () {
        Navigator.pushNamed(context, Entertainment.routeName);
      }),
      CategoryItem('TECHNOLOGY',
          'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          () {
        Navigator.pushNamed(context, Technology.routeName);
      }),
      CategoryItem('TESLA',
          'https://images.unsplash.com/photo-1589718539308-169369696599?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dGVzbGF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          () {
        Navigator.pushNamed(context, Tesla.routeName);
      }),
      CategoryItem('APPLE',
          'https://images.unsplash.com/photo-1535309788751-96b1ec21de31?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXBwbGUlMjBpbmN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          () {
        Navigator.pushNamed(context, Apple.routeName);
      }),
      CategoryItem('JOURNAL',
          'https://images.unsplash.com/photo-1462642109801-4ac2971a3a51?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8am91cm5hbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          () {
        Navigator.pushNamed(context, Journal.routeName);
      }),
      CategoryItem('GLOBAL NEWS',
          'https://images.unsplash.com/photo-1572949645841-094f3a9c4c94?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bmV3c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          () {
        Navigator.pushNamed(context, GlobalNews.routeName);
      }),
      CategoryItem('HEALTH',
          'https://images.unsplash.com/photo-1530497610245-94d3c16cda28?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aGVhbHRofGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          () {
        Navigator.pushNamed(context, Health.routeName);
      }),
      CategoryItem('SCEINCE',
          'https://images.unsplash.com/photo-1453847668862-487637052f8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fHNjaWVuY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
          () {
        Navigator.pushNamed(context, Science.routeName);
      }),
    ];
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: item.length,
        itemBuilder: (BuildContext context, int index) => new Container(
          child: InkWell(
            onTap: item[index].onTap,
            child: Container(
                child: Text(
              item[index].name,
              style: TextStyle(
                  color: Colors.white70, backgroundColor: Colors.black),
            )),
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  item[index].image,
                )),
          ),

          // child:       Stack(children: [
          //   Image.network(item[index].image ,),
          //   Center(child: Text(item[index].name , style: TextStyle(color: Colors.white),)),
          // ],)
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}

class CategoryItem {
  final String name;
  final String image;
  final Function onTap;

  CategoryItem(this.name, this.image, this.onTap);
}
