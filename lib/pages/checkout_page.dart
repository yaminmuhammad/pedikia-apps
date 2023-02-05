import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    Widget selectedService() {
      return Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Layanan yang dipilih',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: 20.0,
                  left: 10.0,
                  right: 10.0,
                  bottom: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Baby  Massage  (45 Menit)',
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              color: Color(0xff4F4F4F),
                            ),
                          ),
                        ),
                        Text(
                          'Rp. 90.000,-',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Total',
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                        Text(
                          'Rp. 90.000,-',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                        ),
                      ],
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
      bottomSheet: Container(
        margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 20.0,
        ),
        height: 40.0,
        width: 364,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            'Reservasi',
            style: primaryTextStyle.copyWith(
              fontSize: 16.0,
              fontWeight: bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: primaryTextStyle.copyWith(
            fontSize: 18.0,
            fontWeight: bold,
            color: primaryColor,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: 100.0,
        ),
        child: Column(
          children: [
            selectedService(),
          ],
        ),
      ),
    );
  }
}
