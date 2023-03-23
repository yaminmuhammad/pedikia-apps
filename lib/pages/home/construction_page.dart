import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pedikia/pages/home/home_page.dart';
import 'package:pedikia/theme.dart';

class ConstructionsPage extends StatelessWidget {
  const ConstructionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/construction.json',
                width: 300,
              ),
              Text(
                'Oops halaman ini sedang dalam pengembangan',
                style: TextStyle(fontSize: 15),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Kembali ke Home',
                    style: primaryTextStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
