import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

class CategoriesServicePage extends StatefulWidget {
  const CategoriesServicePage({super.key});

  @override
  State<CategoriesServicePage> createState() => _CategoriesServicePageState();
}

class _CategoriesServicePageState extends State<CategoriesServicePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsetsDirectional.only(
          top: 20,
          start: 30,
          end: 30,
        ),
        child: Text(
          textAlign: TextAlign.justify,
          'PEDIKIA SIAP MEMBANTU MENGOPTIMALKAN TUMBUH KEMBANG BUAH HATI ANDA',
          style: primaryTextStyle.copyWith(
            fontSize: 12,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget pros() {
      return Container(
        width: 369,
        height: 170,
        decoration: BoxDecoration(
          color: primaryColor2,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        margin: EdgeInsetsDirectional.only(
          top: 20,
          start: 30,
          end: 30,
        ),
        padding: EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.justify,
              'Pedispa adalah layanan spa dari Pedikia yang dilakukan oleh terapis tenaga kesehatan dan memiliki sertifikat terapis babyspa.',
              style: primaryTextStyle.copyWith(
                fontSize: 11,
                color: Color(0xff333333),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_thumbsup.png',
                      width: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Layanan ini dapat dipesan secara fleksibel secara waktu dan tempat',
                          style: primaryTextStyle.copyWith(
                            fontSize: 11,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_shield.png',
                      width: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Babyspa selalu mengawasi semua kegiatan di dalam layanan dan aplikasi',
                          style: primaryTextStyle.copyWith(
                            fontSize: 11,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_law.png',
                      width: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Babyspa menindak tegas semua pelanggaran sesuai hukum dan undang-undang yang berlaku                              ',
                          style: primaryTextStyle.copyWith(
                            fontSize: 11,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Pedispa by Pedikia',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            color: Colors.black,
            fontWeight: medium,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              pros(),
            ],
          ),
        ),
      ),
    );
  }
}
