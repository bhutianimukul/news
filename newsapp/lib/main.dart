import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:newsapp/screens/news_detail_screen.dart.dart';
import 'package:newsapp/screens/categoryItemScreen.dart';

import 'package:newsapp/screens/front_screen.dart';
import 'package:newsapp/screens/login_screen.dart';
import 'package:provider/provider.dart';

import 'model/newsProvider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User user;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    user = auth.currentUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewsProvider(),
      child: MaterialApp(routes: {
        Business.routeName:(_)=>Business(),
         Tesla.routeName:(_)=>Tesla(),
          Apple.routeName:(_)=>Apple(),
           GlobalNews.routeName:(_)=>GlobalNews(),
            Technology.routeName:(_)=>Technology(),
            Journal.routeName:(_)=>Journal(),
            Sports.routeName:(_)=>Sports(),
            Health.routeName:(_)=>Health(),
                 Science.routeName:(_)=>Science(),
            Entertainment.routeName:(_)=>Entertainment(),
            Bitcoin.routeName:(_)=>Bitcoin(),
        FrontScreen.routeName: (_) => FrontScreen(),
        NewsDetailScreen.routeName:(_)=>NewsDetailScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
      }, home: Scaffold(body: user == null ? LoginScreen() : FrontScreen())),
    );
  }
}
