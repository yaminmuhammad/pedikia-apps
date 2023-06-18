import 'package:flutter/material.dart';
import 'package:pedikia/providers/cart_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:provider/provider.dart';
import 'package:pedikia/widget/cart_card.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    Widget header() {
      return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Keranjang',
          style: primaryTextStyle.copyWith(
            fontSize: 20,
            color: whiteColor,
            fontWeight: semiBold,
          ),
        ),
        elevation: 0,
      );
    }

    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'Keranjangmu masih kosong nih',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Ayo segera isi !',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                color: timeColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: cartProvider.carts
            .map(
              (cart) => CartCard(cart),
            )
            .toList(),
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryTextStyle,
                  ),
                  Text(
                    // '\$${cartProvider.totalPrice()}',
                    'Rp ${cartProvider.totalPrice().toStringAsFixed(0).replaceAll('.', ',')}',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 0.3,
              color: subtitleColor,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lanjutkan Pembayaran',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        color: whiteColor,
                        fontWeight: semiBold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: whiteColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        appBar: header(),
        body: cartProvider.carts.length == 0 ? emptyCart() : content(),
        bottomNavigationBar:
            cartProvider.carts.length == 0 ? SizedBox() : customBottomNav());
  }
}
