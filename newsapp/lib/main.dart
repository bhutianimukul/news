import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';

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
        FrontScreen.routeName: (_) => FrontScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
      }, home: Scaffold(body: user == null ? LoginScreen() : FrontScreen())),
    );
  }
}
