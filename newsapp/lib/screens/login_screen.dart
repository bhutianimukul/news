import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import 'front_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  FirebaseAuth auth = FirebaseAuth.instance;
  var isloading = false;

  Duration get loginTime => Duration(milliseconds: 2250);

  @override
  Widget build(BuildContext context) {
    Future<String> dialog(String desc, String s) {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('$s'),
                content: Text("$desc"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routeName);
                      },
                      child: Text('OK!'))
                ],
              ));
    }

    Future<String> login(LoginData data) {
      // ignore: missing_return
      return Future.delayed(loginTime).then((_) async {
        try {
          await auth.signInWithEmailAndPassword(
              email: data.name, password: data.password);
        } catch (error) {
// showDialog(context: context, builder:(_)=>FancyDialog(
//   ok: 'OK!',
//   title: 'Authentication Failed', descreption: 'Please try Again',
// okFun: (){
//   Navigator.pushReplacementNamed(context, LoginScreen.routeName);
// },
// ));
          print(error);
          return dialog('Please Try Again ', 'Authentication Failed');
        }
      });
    }

    Future<String> signup(LoginData data) {
      // ignore: missing_return
      return Future.delayed(loginTime).then((_) async {
        try {
          await auth.createUserWithEmailAndPassword(
              email: data.name, password: data.password);
        } catch (error) {}
      });
    }

    return FlutterLogin(
      logo: 'assets/news_icon.png',
      onSubmitAnimationCompleted: () {
        print(isloading);
        Navigator.pushReplacementNamed(context, FrontScreen.routeName);
      },
      // ignore: missing_return
      onLogin: (data) => login(data),
      onRecoverPassword: (String s) async {
        await auth.sendPasswordResetEmail(
          email: '$s',
        );

        return dialog('Password sent to Registered Email ', 'Login Again');
      },
      onSignup: (data) => signup(data),
    );
  }
}
