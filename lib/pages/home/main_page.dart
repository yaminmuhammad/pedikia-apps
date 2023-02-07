import 'package:flutter/material.dart';
import 'package:pedikia/pages/home/history_page.dart';
import 'package:pedikia/pages/home/home_page.dart';
import 'package:pedikia/pages/home/profile_page.dart';
import 'package:pedikia/pages/home/tips_page.dart';
import 'package:pedikia/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'help_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget HelpButton() {
      return FloatingActionButton(
        onPressed: () { Navigator.push(context, CupertinoPageRoute(builder: (context) => HelpPage())); },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(190),
            bottomRight: Radius.circular(190),
            topRight: Radius.circular(190),
          ),
        ),
        backgroundColor: primaryColor,
        enableFeedback: true,
        tooltip: 'Bantuan',
        child: Image.asset(
          'assets/icon_bantuan.png',
        ),
      );
    }

    Widget CustomBottomNav() {
      return BottomNavigationBar(
        selectedItemColor: primaryColor,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(
            () {
              currentIndex = value;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_home.png',
              width: 22,
              color: currentIndex == 0 ? primaryColor : Color(0xffBDBDBD),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_tips.png',
              width: 22,
              color: currentIndex == 1 ? primaryColor : Color(0xffBDBDBD),
            ),
            label: 'Tips',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_history.png',
              width: 24,
              color: currentIndex == 2 ? primaryColor : Color(0xffBDBDBD),
            ),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_profile.png',
              width: 17,
              color: currentIndex == 3 ? primaryColor : Color(0xffBDBDBD),
            ),
            label: 'Profil',
          ),
        ],
      );
    }

    Widget Body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return TipsPage();
        case 2:
          return HistoryPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      floatingActionButton: HelpButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: CustomBottomNav(),
      body: Body(),
    );
  }
}
