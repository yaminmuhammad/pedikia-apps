import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

class DetailServicePage extends StatelessWidget {
  const DetailServicePage({super.key});

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
          height: 260.0,
          enlargeCenterPage: true,
          scrollPhysics: BouncingScrollPhysics(),
          initialPage: 0,
          pauseAutoPlayOnTouch: true,
        ),
        items: imgLists.map(
          (i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  child: Center(
                    child: Image.asset(
                      i,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                );
              },
            );
          },
        ).toList(),
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
                Text(
                  'Baby Spa',
                  style: primaryTextStyle.copyWith(
                    fontSize: 22.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Rp. 100.000',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: priceColor,
                    ),
                  ),
                  width: 83,
                  height: 20,
                  alignment: Alignment.center,
                  child: Text(
                    'Baby Spa',
                    style: primaryTextStyle.copyWith(
                      fontSize: 11.0,
                      color: priceColor,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: priceColor,
                    ),
                  ),
                  width: 83,
                  height: 20,
                  alignment: Alignment.center,
                  child: Text(
                    'Baby Spa',
                    style: primaryTextStyle.copyWith(
                      fontSize: 11.0,
                      color: priceColor,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: priceColor,
                    ),
                  ),
                  width: 83,
                  height: 20,
                  alignment: Alignment.center,
                  child: Text(
                    'Baby Spa',
                    style: primaryTextStyle.copyWith(
                      fontSize: 11.0,
                      color: priceColor,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: priceColor,
                    ),
                  ),
                  width: 83,
                  height: 20,
                  alignment: Alignment.center,
                  child: Text(
                    'Baby Spa',
                    style: primaryTextStyle.copyWith(
                      fontSize: 11.0,
                      color: priceColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  textAlign: TextAlign.center,
                  'Layanan pijat untuk bayi guna merangsang pertumbuhan dan perkembangan motorik bayi. Layanan ini diperuntukkan untuk bayi dan anak usia 0-2 tahun. ',
                  style: primaryTextStyle.copyWith(
                    color: Color(0xff4F4F4F),
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text('Manfaat lainnya diantaranya:'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                  Text('\u2022 Bullet Text'),
                ],
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
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            'Pesan Sekarang',
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
          'Detail Service',
          style: primaryTextStyle.copyWith(
            fontSize: 18.0,
            fontWeight: bold,
            color: Colors.white,
            backgroundColor: primaryColor.withOpacity(0.5),
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
            carouselHeader(),
            content(),
          ],
        ),
      ),
    );
  }
}
