import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/newsProvider.dart';
import 'package:newsapp/screens/global_news_screen.dart';
import 'package:newsapp/screens/logoutScreen.dart';
import 'package:newsapp/screens/trending_screen.dart';
import 'package:provider/provider.dart';
import 'categories_screen.dart';

class FrontScreen extends StatefulWidget {
  static const routeName = '/front';
  @override
  _FrontScreenState createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  int currentIndex = 0;
  final List<Widget> items = [
    GlobalNewsScreen(),
    CategoryScreen(),
    TrendingScreen(),
    Logout()
  ];
  void changePage(index) {
    setState(() {
      currentIndex = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        NewsProvider();
      },
      child: Scaffold(
          body: items[currentIndex],
          bottomNavigationBar: BubbleBottomBar(
            elevation: 8,
            hasNotch: true,
            hasInk: true,
            inkColor: Colors.black12,
            currentIndex: currentIndex,
            iconSize: 30,
            onTap: changePage,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                  backgroundColor: Colors.red,
                  icon: Icon(
                    Icons.dashboard,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.dashboard,
                    color: Colors.red,
                  ),
                  title: Text("Home")),
              BubbleBottomBarItem(
                  backgroundColor: Colors.green,
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.menu,
                    color: Colors.green,
                  ),
                  title: Text("Categories")),
              BubbleBottomBarItem(
                  backgroundColor: Colors.orange,
                  icon: Icon(
                    Icons.trending_up_sharp,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.trending_down_outlined,
                    color: Colors.orange,
                  ),
                  title: Text("Trending")),
              BubbleBottomBarItem(
                  backgroundColor: Colors.orange,
                  icon: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.logout,
                    color: Colors.orange,
                  ),
                  title: Text("LogOut")),
            ],
            opacity: .2,
          )),
    );
  }
}
