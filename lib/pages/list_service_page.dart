import 'package:flutter/material.dart';
import 'package:pedikia/pages/detail_service_page.dart';
import 'package:pedikia/theme.dart';

class ListServicePage extends StatefulWidget {
  @override
  State<ListServicePage> createState() => _ListServicePageState();
}

class _ListServicePageState extends State<ListServicePage> {
  @override
  Widget build(BuildContext context) {
    Widget headerWarn() {
      return Container(
        width: 369,
        height: 52,
        decoration: BoxDecoration(
          color: Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(30),
        ),
        margin: EdgeInsetsDirectional.only(
          top: 20,
          start: 30,
          end: 30,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Image.asset(
                'assets/icon_information.png',
                width: 20,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Text(
                  'Silahkan pilih layanan yang diinginkan dengan klik salah satu paket yang disediakan oleh pedikia',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                    color: Color(0xff4F4F4F),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget listP() {
      return Container(
        margin: EdgeInsetsDirectional.only(
          top: 20,
          start: 15,
          end: 15,
          bottom: 100,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailServicePage(),
                  ),
                );
              },
              child: Container(
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
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Image.asset(
                        'assets/image_baby5.png',
                        // width: 70,
                        height: double.infinity,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Text(
                              'Baby Newborn Treatment',
                              style: primaryTextStyle.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(
                            //   top: 2,
                            // ),
                            child: Expanded(
                              child: Text(
                                'Layanan pijat untuk bayi guna merangsang pertumbuhan dan perkembangan motorik bayi',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: medium,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: priceColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_price.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  Rp. 90.000,-',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: timeColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_time.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  90 Menit',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // 2
            GestureDetector(
              onTap: () {},
              child: Container(
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
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Image.asset(
                        'assets/image_baby5.png',
                        // width: 70,
                        height: double.infinity,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Text(
                              'Baby Newborn Treatment',
                              style: primaryTextStyle.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(
                            //   top: 2,
                            // ),
                            child: Expanded(
                              child: Text(
                                'Layanan pijat untuk bayi guna merangsang pertumbuhan dan perkembangan motorik bayi',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: medium,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: priceColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_price.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  Rp. 90.000,-',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: timeColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_time.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  90 Menit',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // 3
            GestureDetector(
              onTap: () {},
              child: Container(
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
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Image.asset(
                        'assets/image_baby5.png',
                        // width: 70,
                        height: double.infinity,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Text(
                              'Baby Newborn Treatment',
                              style: primaryTextStyle.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(
                            //   top: 2,
                            // ),
                            child: Expanded(
                              child: Text(
                                'Layanan pijat untuk bayi guna merangsang pertumbuhan dan perkembangan motorik bayi',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: medium,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: priceColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_price.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  Rp. 90.000,-',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: timeColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_time.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  90 Menit',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // 4
            GestureDetector(
              onTap: () {},
              child: Container(
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
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Image.asset(
                        'assets/image_baby5.png',
                        // width: 70,
                        height: double.infinity,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Text(
                              'Baby Newborn Treatment',
                              style: primaryTextStyle.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(
                            //   top: 2,
                            // ),
                            child: Expanded(
                              child: Text(
                                'Layanan pijat untuk bayi guna merangsang pertumbuhan dan perkembangan motorik bayi',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: medium,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: priceColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_price.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  Rp. 90.000,-',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: timeColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_time.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  90 Menit',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // 5
            GestureDetector(
              onTap: () {},
              child: Container(
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
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Image.asset(
                        'assets/image_baby5.png',
                        // width: 70,
                        height: double.infinity,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Text(
                              'Baby Newborn Treatment',
                              style: primaryTextStyle.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(
                            //   top: 2,
                            // ),
                            child: Expanded(
                              child: Text(
                                'Layanan pijat untuk bayi guna merangsang pertumbuhan dan perkembangan motorik bayi',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: medium,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: priceColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_price.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  Rp. 90.000,-',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 88,
                                  height: 20,
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: timeColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon_time.png',
                                        width: 12,
                                      ),
                                      Text(
                                        '  90 Menit',
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 10, color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
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
          'Baby and Kid’s Treatment',
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
              headerWarn(),
              listP(),
            ],
          ),
        ),
      ),
    );
  }
}
