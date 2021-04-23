import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    Future<String> dialog(String desc, String s) {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('$s'),
                content: Text("$desc"),
                actions: [
                  TextButton(
                      onPressed: () {
                        print('j');
                        auth.signOut();
                      },
                      child: Text('OK!'))
                ],
              ));
    }

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          dialog('Log out', 'log out');
        },
      ),
    );
  }
}
