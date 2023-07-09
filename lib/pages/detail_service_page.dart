import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pedikia/models/service_model.dart';
import 'package:pedikia/providers/cart_provider.dart';
import 'package:pedikia/providers/wishlist_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class DetailServicePage extends StatefulWidget {
  final ServiceModel service;
  DetailServicePage(this.service);

  @override
  State<DetailServicePage> createState() => _DetailServicePageState();
}

class _DetailServicePageState extends State<DetailServicePage> {
  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    final List<String> imgLists = [
      'assets/image_baby6.png',
      'assets/image_baby6.png',
      'assets/image_baby6.png',
    ];

    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icon_success.png',
                    width: 100,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Horee :)',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Berhasil ditambahkan ke keranjang',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      color: timeColor,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

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
            ?.map(
              (image) => CachedNetworkImage(
                imageUrl: image.url,
                width: MediaQuery.of(context).size.width,
                height: 310,
                fit: BoxFit.cover,
                placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  enabled: true,
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                      widget.service.name!,
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
                      'Rp ${widget.service.price!.toStringAsFixed(0).replaceAll('.', ',')}',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        color: priceColor,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    wishlistProvider.setService(widget.service);
                    if (wishlistProvider.isWishlist(widget.service)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: priceColor,
                          content: Text(
                            'Telah ditambahkan ke wishlist',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: alertColor,
                          content: Text(
                            'Telah dihapus dari wishlist',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    }
                  },
                  child: Image.asset(
                    wishlistProvider.isWishlist(widget.service)
                        ? 'assets/button_wishlist_pink.png'
                        : 'assets/button_wishlist.png',
                    width: 46,
                  ),
                ),
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
                widget.service.description!,
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
            cartProvider.addCart(widget.service);
            showSuccessDialog();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add to Cart ',
                style: primaryTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: bold,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
            ],
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
