import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // const SplashPage({super.key});
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, '/sign-in'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            // width: 130,
            // height: 150,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/pedikia.png'))),
          ),
        ));
  }
}
