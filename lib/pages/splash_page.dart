import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pedikia/providers/serve_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // const SplashPage({super.key});
  @override
  void initState() {
    // TODO: implement initState

    getInit();

    super.initState();
  }

  getInit() async {
    await Provider.of<ServeProvider>(context, listen: false).getServices();
    Navigator.pushNamed(context, '/sign-in');
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
