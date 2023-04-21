import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pedikia/theme.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              // Load a Lottie file from your assets
              Container(
                margin: EdgeInsets.only(top: 130),
                child: Lottie.asset('assets/no_tips.json',
                    alignment: Alignment.bottomCenter),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: Text(
                    'Tidak ada Tips',
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
