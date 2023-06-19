// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:pedikia/theme.dart';

// class HistoryPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: ListView(
//             children: [
//               // Load a Lottie file from your assets
//               Container(
//                 margin: EdgeInsets.only(top: 130),
//                 child: Lottie.asset('assets/not_found.json',
//                     alignment: Alignment.bottomCenter),
//               ),
//               Center(
//                 child: Container(
//                   margin: EdgeInsets.all(30),
//                   child: Text(
//                     'Tidak ada Riwayat',
//                     style: primaryTextStyle.copyWith(
//                       fontSize: 20,
//                       fontWeight: bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pedikia/theme.dart';
import 'package:pedikia/widget/wishlist_card.dart';
import 'package:pedikia/providers/page_provider.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);
    PageProvider pageProvider = Provider.of<PageProvider>(context);

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

    // Widget content() {
    //   return Expanded(
    //     child: Container(
    //       child: ListView(
    //         padding: EdgeInsets.symmetric(
    //           horizontal: defaultMargin,
    //         ),
    //         children: wishlistProvider.wishlist
    //             .map(
    //               (service) => WishlistCard(service),
    //             )
    //             .toList(),
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
      body: Column(
        children: [
          header(),
          emptyWishlist()
          // wishlistProvider.wishlist.length == 0 ? emptyWishlist() : content(),
        ],
      ),
    );
  }
}
