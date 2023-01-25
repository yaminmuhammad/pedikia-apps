import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pedikia/pages/home/history_page.dart';
import 'package:pedikia/pages/home/profile_page.dart';
import 'package:pedikia/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgLists = [
    'assets/banner.png',
    'assets/banner_2.png',
    'assets/banner_3.png',
  ];

  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 113,
              color: primaryColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
              top: 20,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/pedikia_white.png',
                  width: 98,
                ),
                Container(
                  width: 264,
                  height: 34,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: subtitleTextStyle,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Cari Layanan...',
                            hintStyle: subtitleTextStyle,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: subtitleColor,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 90,
                    left: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo,',
                        style: primaryTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                          // color: Colors.white,
                        ),
                      ),
                      Text(
                        'John Deep',
                        style: primaryTextStyle.copyWith(
                          fontSize: 25,
                          fontWeight: bold,
                          // color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget Carousel() {
      return Container(
          child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          enlargeCenterPage: true,
          autoPlay: true,
          initialPage: 0,
          pauseAutoPlayOnTouch: true,
          autoPlayInterval: Duration(seconds: 3),
        ),
        items: imgLists.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                child: Center(
                  child: Image.asset(
                    i,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.symmetric(horizontal: 5.0),
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/banner.png'),
                //   ),
                // ),
              );
            },
          );
        }).toList(),
      ));
    }

    Widget Menu() {
      return Expanded(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 40,
                right: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  itemKategori(
                    title: "Pedispa",
                    icon: "assets/icon_pedispa.png",
                  ),
                  itemKategori(
                    title: "Pedisitter",
                    icon: "assets/icon_pedisiter.png",
                  ),
                  itemKategori(
                    title: "Pedibaby",
                    icon: "assets/icon_pedibaby.png",
                  ),
                  itemKategori(
                    title: "Pedikids",
                    icon: "assets/icon_pedikids.png",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 40,
                right: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: itemKategori(
                      title: "Pediary",
                      icon: "assets/icon_pediary.png",
                    ),
                  ),
                  itemKategori(
                    title: "Pedifood",
                    icon: "assets/icon_pedifood.png",
                  ),
                  itemKategori(
                    title: "Pedishop",
                    icon: "assets/icon_pedishop.png",
                  ),
                  itemKategori(
                    title: "Pedirental",
                    icon: "assets/icon_pedirental.png",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: Text(
                'Mengapa harus Pedikia?',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: bold,
                  color: Color(0xff333333),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 90,
              ),
              child: Center(
                child: Image.asset(
                  'assets/why.png',
                  width: 364,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget HelpButton() {
      return FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.help,
          color: Colors.white,
          semanticLabel: 'Bantuan',
        ),
        backgroundColor: primaryColor,
        enableFeedback: true,
        tooltip: 'Bantuan',
      );
    }

    // Widget CustomBottomNav() {
    //   return BottomNavigationBar(
    //     selectedItemColor: primaryColor,
    //     currentIndex: currentIndex,
    //     onTap: (value) {
    //       setState(
    //         () {
    //           currentIndex = value;
    //         },
    //       );
    //     },
    //     // backgroundColor: primaryColor,
    //     items: [
    //       BottomNavigationBarItem(
    //         icon: Image.asset(
    //           'assets/icon_home.png',
    //           width: 22,
    //           color: currentIndex == 0 ? primaryColor : Color(0xffBDBDBD),
    //         ),
    //         label: 'Beranda',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Image.asset(
    //           'assets/icon_history.png',
    //           width: 24,
    //           color: currentIndex == 1 ? primaryColor : Color(0xffBDBDBD),
    //         ),
    //         label: 'Riwayat',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Image.asset(
    //           'assets/icon_profile.png',
    //           width: 17,
    //           color: currentIndex == 2 ? primaryColor : Color(0xffBDBDBD),
    //         ),
    //         label: 'Profil',
    //       ),
    //     ],
    //   );
    // }

    // Widget Body() {
    //   switch (currentIndex) {
    //     case 0:
    //       return HomePage();
    //       break;
    //     case 1:
    //       return HistoryPage();
    //       break;
    //     case 2:
    //       return ProfilePage();
    //       break;
    //     default:
    //       return HomePage();
    //   }
    // }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Carousel(),
            Menu(),
          ],
        ),
      ),
    );
  }
}

class itemKategori extends StatelessWidget {
  const itemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset(
            icon,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
        ),
      ],
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
