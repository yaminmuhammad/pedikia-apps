import 'package:flutter/material.dart';
import 'package:pedikia/pages/home/history_page.dart';
import 'package:pedikia/pages/home/home_page.dart';
import 'package:pedikia/pages/home/profile_page.dart';
import 'package:pedikia/pages/home/wishlist_page.dart';
import 'package:pedikia/providers/page_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:provider/provider.dart';
import 'package:pedikia/pages/cart_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget HelpButton() {
      return FloatingActionButton(
        onPressed: () {},
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
        currentIndex: pageProvider.currentIndex,
        onTap: (value) {
          print(value);
          pageProvider.currentIndex = value;
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_home.png',
              width: 22,
              color: pageProvider.currentIndex == 0
                  ? primaryColor
                  : Color(0xffBDBDBD),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: pageProvider.currentIndex == 1
                  ? primaryColor
                  : Color(0xffBDBDBD),
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_mall,
              color: pageProvider.currentIndex == 2
                  ? primaryColor
                  : Color(0xffBDBDBD),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_history.png',
              width: 24,
              color: pageProvider.currentIndex == 3
                  ? primaryColor
                  : Color(0xffBDBDBD),
            ),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_profile.png',
              width: 17,
              color: pageProvider.currentIndex == 4
                  ? primaryColor
                  : Color(0xffBDBDBD),
            ),
            label: 'Profil',
          ),
        ],
      );
    }

    Widget Body() {
      switch (pageProvider.currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return WishlistPage();
          break;
        case 2:
          return CartPage();
          break;
        case 3:
          return HistoryPage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      floatingActionButton:
          pageProvider.currentIndex == 0 ? HelpButton() : SizedBox(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: CustomBottomNav(),
      body: Body(),
    );
  }
}
