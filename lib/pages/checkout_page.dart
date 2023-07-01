import 'package:flutter/material.dart';
import 'package:pedikia/providers/auth_provider.dart';
import 'package:pedikia/providers/transaction_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:pedikia/widget/loading_button.dart';
import 'package:provider/provider.dart';
import 'package:pedikia/providers/cart_provider.dart';
import '../widget/checkout_card.dart';

class CheckoutPage extends StatefulWidget {
  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    TransactionProvider transactionProvider =
        Provider.of<TransactionProvider>(context);
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    TextEditingController addressController =
        TextEditingController(text: authProvider.user.address);
    TextEditingController cityController =
        TextEditingController(text: authProvider.user.city);

    handleCheckout() async {
      setState(() {
        isLoading = true;
      });

      if (await transactionProvider.checkout(
        authProvider.user.token,
        addressController.text,
        cityController.text,
        cartProvider.carts,
        cartProvider.totalPrice(),
      )) {
        cartProvider.carts = [];
        Navigator.pushNamedAndRemoveUntil(
            context, '/checkout-success', (route) => false);
      }

      setState(() {
        isLoading = false;
      });
    }

    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: primaryTextStyle.copyWith(
            fontSize: 20,
            color: whiteColor,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          // NOTE: LIST ITEMS
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Column(
                  children: cartProvider.carts
                      .map(
                        (cart) => CheckoutCard(cart),
                      )
                      .toList(),
                ),
              ],
            ),
          ),

          // NOTE: ADDRESS DETAILS
          // Container(
          //   margin: EdgeInsets.only(
          //     top: defaultMargin,
          //   ),
          //   padding: EdgeInsets.all(20),
          //   decoration: BoxDecoration(
          //     color: secondaryColor,
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'Address Details',
          //         style: primaryTextStyle.copyWith(
          //           fontSize: 16,
          //           fontWeight: medium,
          //         ),
          //       ),
          //       SizedBox(
          //         height: 12,
          //       ),
          //       Row(
          //         children: [
          //           Column(
          //             children: [
          //               Image.asset(
          //                 'assets/icon_address.png',
          //                 width: 40,
          //               ),
          //               Image.asset(
          //                 'assets/icon_line.png',
          //                 height: 30,
          //                 color: Colors.black,
          //               ),
          //               Image.asset(
          //                 'assets/icon_city.png',
          //                 width: 40,
          //               ),
          //             ],
          //           ),
          //           SizedBox(
          //             width: 12,
          //           ),
          //           Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Alamat',
          //                 style: secondaryTextStyle.copyWith(
          //                   fontSize: 12,
          //                   color: Colors.black,
          //                   fontWeight: light,
          //                 ),
          //               ),
          //               TextFormField(
          //                 decoration: InputDecoration(
          //                   hintText: authProvider.user.address,
          //                 ),
          //                 controller: addressController,
          //                 style: primaryTextStyle.copyWith(
          //                   fontWeight: medium,
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: defaultMargin,
          //               ),
          //               // Text(
          //               //   'Kota',
          //               //   style: secondaryTextStyle.copyWith(
          //               //     fontSize: 12,
          //               //     color: Colors.black,
          //               //     fontWeight: light,
          //               //   ),
          //               // ),
          //               // Text(
          //               //   authProvider.user.city,
          //               //   style: primaryTextStyle.copyWith(
          //               //     fontWeight: medium,
          //               //   ),
          //               // ),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),

          Container(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: defaultMargin,
                ),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alamat',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        color: primaryColor,
                        fontWeight: light,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: authProvider.user.address,
                      ),
                      controller: addressController,
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: defaultMargin,
                    ),
                    Text(
                      'Kota',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: light,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: authProvider.user.city,
                      ),
                      controller: cityController,
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // NOTE: PAYMENT SUMMARY
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Summary',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Waktu',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '${cartProvider.totalItems()} Jam',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Harga',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      // '\$${cartProvider.totalPrice()}',
                      'Rp ${cartProvider.totalPrice().toStringAsFixed(0).replaceAll('.', ',')}',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Biaya Admin',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Gratis',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xff2E3141),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Rp ${cartProvider.totalPrice().toStringAsFixed(0).replaceAll('.', ',')}',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // NOTE: CHECKOUT BUTTON
          SizedBox(
            height: defaultMargin,
          ),
          Divider(
            thickness: 1,
            color: Color(0xff2E3141),
          ),
          isLoading
              ? Container(
                  margin: EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: LoadingButton(),
                )
              : Container(
                  height: 40,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    top: 15,
                    bottom: 30,
                  ),
                  child: TextButton(
                    onPressed: handleCheckout,
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Checkout Sekarang',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        color: whiteColor,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
        ],
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
