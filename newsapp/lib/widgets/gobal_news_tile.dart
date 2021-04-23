import 'package:flutter/material.dart';

import '../model/news_model.dart';

class GlobalNewsTile extends StatelessWidget {
  final NewsModel item;

  GlobalNewsTile({this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 3,
            height: 3,
            color: Colors.purple,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: Text(
              item.title,
              style: TextStyle(
                color: Color(0xFFFFDB58),
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // TODO: navigate to the page to see full description
              //
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.remove_red_eye_rounded,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'See full article',
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
    );
  }
}
