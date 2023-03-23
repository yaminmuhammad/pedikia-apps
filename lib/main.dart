import 'package:flutter/material.dart';
import 'package:pedikia/pages/home/main_page.dart';
import 'package:pedikia/pages/sign_in_page.dart';
import 'package:pedikia/pages/sign_up_page.dart';
import 'package:pedikia/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },

      // initialRoute: '/',
      // getPages: [
      //   GetPage(
      //     name: '/',
      //     page: () => SplashPage(),
      //   ),
      //   GetPage(
      //     name: '/sign-in',
      //     page: () => SignInPage(),
      //     transition: Transition.cupertino,
      //   ),
      //   GetPage(
      //     name: '/sign-up',
      //     page: () => SignUpPage(),
      //     transition: Transition.cupertino,
      //   ),
      //   GetPage(
      //     name: '/home',
      //     page: () => MainPage(),
      //     transition: Transition.cupertino,
      //   ),
      // ],
    );
  }
}
