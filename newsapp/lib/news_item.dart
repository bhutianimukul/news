import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final NewsItem news;

  const NewsItem(this.news);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 5,
          ),
          SizedBox(
            width: 10,
          ),
          Text('Tesla')
        ],
      ),
    );
  }
}
