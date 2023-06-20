import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pedikia/providers/page_provider.dart';
import 'package:pedikia/providers/wishlist_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:provider/provider.dart';
import 'package:pedikia/widget/wishlist_card.dart';
import 'package:pedikia/providers/serve_provider.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Favorite',
          style: primaryTextStyle.copyWith(
            fontSize: 20,
            color: whiteColor,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/no_tips.json',
                alignment: Alignment.bottomCenter,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                ' Kamu belum menyimpan layanan favorite?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Ayo kita cari layanan terbaik ',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  color: timeColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {
                    pageProvider.currentIndex = 0;
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 24,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Explore',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      color: whiteColor,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: wishlistProvider.wishlist
                .map(
                  (service) => WishlistCard(service),
                )
                .toList(),
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          wishlistProvider.wishlist.length == 0 ? emptyWishlist() : content(),
        ],
      ),
    );
  }
}
