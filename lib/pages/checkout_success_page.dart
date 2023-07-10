import 'package:flutter/material.dart';
import 'package:pedikia_id/theme.dart';
import 'package:lottie/lottie.dart';

class CheckoutSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Checkout Success',
        ),
        elevation: 0,
      );
    }

    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/success.json',
              alignment: Alignment.bottomCenter,
              width: 150,
            ),
            SizedBox(
              height: 90,
            ),
            Text(
              'Berhasil melakukan pesanan',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Harap tunggu terapis kami\n ke Rumah Anda',
              style: subtitleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Kembali ke Cart',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    color: whiteColor,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            // Container(
            //   width: 196,
            //   height: 44,
            //   margin: EdgeInsets.only(
            //     top: 12,
            //   ),
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.pushNamedAndRemoveUntil(
            //           context, '/cart', (route) => false);
            //     },
            //     style: TextButton.styleFrom(
            //       backgroundColor: Color(0xff39374B),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //     ),
            //     child: Text(
            //       'View My Order',
            //       style: primaryTextStyle.copyWith(
            //         fontSize: 16,
            //         fontWeight: medium,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
