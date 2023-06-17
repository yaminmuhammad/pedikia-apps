import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pedikia/models/service_model.dart';
import 'package:pedikia/pages/checkout_page.dart';
import 'package:pedikia/theme.dart';
import 'package:pedikia/widget/bullet_widget.dart';

class DetailServicePage extends StatefulWidget {
  final ServiceModel service;
  DetailServicePage(this.service);

  @override
  State<DetailServicePage> createState() => _DetailServicePageState();
}

class _DetailServicePageState extends State<DetailServicePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgLists = [
      'assets/image_baby6.png',
      'assets/image_baby6.png',
      'assets/image_baby6.png',
    ];

    Widget carouselHeader() {
      return CarouselSlider(
        options: CarouselOptions(
          height: 280.0,
          enlargeCenterPage: true,
          scrollPhysics: BouncingScrollPhysics(),
          initialPage: 0,
          pauseAutoPlayOnTouch: true,
        ),
        items: widget.service.galleries
            .map(
              (image) => Image.network(
                image.url,
                width: MediaQuery.of(context).size.width,
                height: 310,
                fit: BoxFit.cover,
              ),
            )
            .toList(),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.service.name,
                      style: primaryTextStyle.copyWith(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rp ${widget.service.price.toStringAsFixed(0).replaceAll('.', ',')}',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        color: priceColor,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                // GestureDetector(
                //     onTap: () {
                //       wishlistProvider.setProduct(widget.product);

                //       if (wishlistProvider.isWishlist(widget.product)) {
                //         ScaffoldMessenger.of(context).showSnackBar(
                //           SnackBar(
                //             backgroundColor: secondaryColor,
                //             content: Text(
                //               'Has been added to the Wishlist',
                //               textAlign: TextAlign.center,
                //             ),
                //           ),
                //         );
                //       } else {
                //         ScaffoldMessenger.of(context).showSnackBar(
                //           SnackBar(
                //             backgroundColor: alertColor,
                //             content: Text(
                //               'Has been removed from the Wishlist',
                //               textAlign: TextAlign.center,
                //             ),
                //           ),
                //         );
                //       }
                //     },
                //     child: Image.asset(
                //       wishlistProvider.isWishlist(widget.product)
                //           ? 'assets/button_wishlist_blue.png'
                //           : 'assets/button_wishlist.png',
                //       width: 46,
                //     ),
                //   ),

                // Text(
                //   'Rp ${widget.service.price.toStringAsFixed(0).replaceAll('.', ',')}',
                //   style: primaryTextStyle.copyWith(
                //     fontSize: 16.0,
                //     color: Colors.black,
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.all(3),
              child: Image.asset(
                'assets/why.png',
                width: 1000,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.service.description,
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                  color: Color(0xff333333),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomSheet: Container(
        margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 20.0,
        ),
        height: 40.0,
        width: 364,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CheckoutPage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Text(
            'Pilih',
            style: primaryTextStyle.copyWith(
              fontSize: 16.0,
              fontWeight: bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        // title: Text(
        //   'Detail Service',
        //   style: primaryTextStyle.copyWith(
        //     fontSize: 18.0,
        //     fontWeight: bold,
        //     color: Colors.white,
        //   ),
        // ),
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
            SizedBox(
              height: 30.0,
            ),
            carouselHeader(),
            content(),
          ],
        ),
      ),
    );
  }
}
