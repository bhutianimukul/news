import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:newsapp/widgets/gobal_news_tile.dart';

import '../model/news_model.dart';

class SwapCard extends StatelessWidget {
  final title;
  const SwapCard({
    this.title,
    @required this.items,
  });

  final List<NewsModel> items;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade200,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 46,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFFFBD56),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: TinderSwapCard(
                orientation: AmassOrientation.RIGHT,
                stackNum: 4,
                maxWidth: MediaQuery.of(context).size.width,
                maxHeight: MediaQuery.of(context).size.height * .8,
                minHeight: MediaQuery.of(context).size.height * .5,
                minWidth: MediaQuery.of(context).size.width * 0.5,
                cardBuilder: (BuildContext context, int index) =>
                    GlobalNewsTile(
                  item: items[index],
                ),
                totalNum: items.length,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_left_outlined),
                  Text(
                    'Swipe',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_right_outlined)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
