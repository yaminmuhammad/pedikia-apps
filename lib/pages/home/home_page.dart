import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pedikia/models/user_model.dart';
import 'package:pedikia/providers/auth_provider.dart';
import 'package:pedikia/providers/serve_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:pedikia/widget/service_tile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgLists = [
    'assets/banner.png',
    'assets/banner_2.png',
    'assets/banner_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ServeProvider serveProvider = Provider.of<ServeProvider>(context);

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
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Halo,  ${user.name}',
                        style: primaryTextStyle.copyWith(
                          fontSize: 25,
                          fontWeight: bold,
                          // color: Colors.white,
                        ),
                      ),
                      // Text(
                      //   '${user.name}',
                      //   style: primaryTextStyle.copyWith(
                      //     fontSize: 25,
                      //     fontWeight: bold,
                      //     // color: Colors.white,
                      //   ),
                      // ),
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
        ),
      );
    }

    Widget ListService() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: serveProvider.services
              .map(
                (service) => ServiceTile(service),
              )
              .toList(),
        ),
      );
    }

    return Container(
      child: ListView(
        children: [
          Header(),
          Carousel(),
          ListService(),
        ],
      ),
    );
  }
}

class itemKategori extends StatelessWidget {
  const itemKategori({
    required Key key,
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

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     AuthProvider authProvider = Provider.of<AuthProvider>(context);
//     UserModel user = authProvider.user;
//     ServeProvider serveProvider = Provider.of<ServeProvider>(context);

//     if (serveProvider.services.isEmpty) {
//       return Center(
//         child: Text('Tidak ada data layanan.'),
//       );
//     } else {
//       return Container(
//         margin: EdgeInsets.only(
//           top: 14,
//         ),
//         child: Column(
//           children: serveProvider.services
//               .map(
//                 (service) => ServiceTile(service),
//               )
//               .toList(),
//         ),
//       );
//     }
//     // return Center(
//     //   child: Text(user.name),
//     // );
//   }
// }
