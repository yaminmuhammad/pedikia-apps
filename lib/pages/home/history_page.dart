import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pedikia/providers/order_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:pedikia/widget/order_card.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryPage extends StatefulWidget {
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    // TODO: implement initState
    getsInit();
    super.initState();
  }

  getsInit() async {
    sendSession();
  }

  Future sendSession() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    // final email = sharedPreferences.getString('email');
    // final password = sharedPreferences.getString('password');
    final token = sharedPreferences.getString('token');

    // await Provider.of<AuthProvider>(context, listen: false).login(
    //   email: email,
    //   password: password,
    // );
    await Provider.of<OrderProvider>(context, listen: false)
        .getTransactionSuccess();
  }

  @override
  Widget build(BuildContext context) {
    // AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // UserModel user = authProvider.user;
    OrderProvider orderProvider = Provider.of<OrderProvider>(context);
    // WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);
    // PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'History',
          style: primaryTextStyle.copyWith(
            fontSize: 20,
            color: whiteColor,
            fontWeight: semiBold,
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
            children: orderProvider.orders
                .map(
                  (order) => OrderCard(order),
                )
                .toList(),
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
                'assets/not_found.json',
                alignment: Alignment.bottomCenter,
              ),
              SizedBox(
                height: 23,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: Text(
                    'Tidak ada Riwayat',
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          // content(),
          orderProvider.orders.length == 0 ? emptyWishlist() : content(),
        ],
      ),
    );
  }
}
