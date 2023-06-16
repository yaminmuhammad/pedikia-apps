import 'package:flutter/material.dart';
import 'package:pedikia/models/user_model.dart';
import 'package:pedikia/providers/serve_provider.dart';
import 'package:provider/provider.dart';
import 'package:pedikia/pages/list_service_page.dart';
import 'package:pedikia/providers/auth_provider.dart';
import 'package:pedikia/theme.dart';

class CategoriesServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ServeProvider serveProvider = Provider.of<ServeProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsetsDirectional.only(
          top: 20,
          start: 30,
          end: 30,
        ),
        child: Text(
          'PEDIKIA SIAP MEMBANTU MENGOPTIMALKAN TUMBUH KEMBANG BUAH HATI ANDA',
          textAlign: TextAlign.justify,
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
              'Pedispa adalah layanan spa dari Pedikia yang dilakukan oleh terapis tenaga kesehatan dan memiliki sertifikat terapis babyspa.',
              textAlign: TextAlign.justify,
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

    // Widget list() {
    //   return Container(
    //     margin: EdgeInsetsDirectional.only(
    //       top: 20,
    //       start: 30,
    //       end: 30,
    //       bottom: 100,
    //     ),
    //     child: Column(
    //       children: serveProvider.services
    //           .map(
    //             (service) => ServiceCard(service),
    //           )
    //           .toList(),
    //       // children: [
    //       //   // Single list item 1

    //       //   GestureDetector(
    //       //     onTap: () {
    //       //       Navigator.push(
    //       //         context,
    //       //         MaterialPageRoute(
    //       //           builder: (context) => ListServicePage(),
    //       //         ),
    //       //       );
    //       //     },
    //       //     child: Container(
    //       //       height: 80,
    //       //       decoration: BoxDecoration(
    //       //         color: Colors.white,
    //       //         borderRadius: BorderRadius.circular(12),
    //       //         boxShadow: [
    //       //           BoxShadow(
    //       //               color: Colors.grey.withOpacity(0.5),
    //       //               spreadRadius: 2,
    //       //               blurRadius: 4,
    //       //               offset: Offset(0, 3)),
    //       //         ],
    //       //       ),
    //       //       child: Row(
    //       //         children: [
    //       //           Container(
    //       //             margin: EdgeInsets.only(
    //       //               right: 10,
    //       //             ),
    //       //             child: Image.asset(
    //       //               'assets/image_baby1.png',
    //       //               width: 70,
    //       //             ),
    //       //           ),
    //       //           Expanded(
    //       //             child: Column(
    //       //               crossAxisAlignment: CrossAxisAlignment.start,
    //       //               children: [
    //       //                 Container(
    //       //                   margin: EdgeInsets.only(
    //       //                     top: 10,
    //       //                   ),
    //       //                   child: Text(
    //       //                     'Baby Newborn Treatment',
    //       //                     style: primaryTextStyle.copyWith(
    //       //                       fontSize: 16,
    //       //                       color: Colors.black,
    //       //                     ),
    //       //                   ),
    //       //                 ),
    //       //                 Container(
    //       //                   margin: EdgeInsets.only(
    //       //                     top: 5,
    //       //                   ),
    //       //                   child: Text(
    //       //                     'Perawatan untuk bayi baru lahir',
    //       //                     style: primaryTextStyle.copyWith(
    //       //                       fontSize: 10,
    //       //                       fontWeight: medium,
    //       //                       color: Colors.black,
    //       //                     ),
    //       //                   ),
    //       //                 ),
    //       //                 Container(
    //       //                   margin: EdgeInsets.only(
    //       //                     top: 8,
    //       //                   ),
    //       //                   child: Row(
    //       //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       //                     children: [
    //       //                       Container(
    //       //                         padding: EdgeInsets.only(
    //       //                           left: 4,
    //       //                           right: 4,
    //       //                         ),
    //       //                         decoration: BoxDecoration(
    //       //                           borderRadius: BorderRadius.circular(12),
    //       //                           border: Border.all(
    //       //                             color: Color(0xffD9D9D9),
    //       //                           ),
    //       //                         ),
    //       //                         child: Text(
    //       //                           'Baby Massage',
    //       //                           style: primaryTextStyle.copyWith(
    //       //                               fontSize: 10, color: Color(0xff333333)),
    //       //                         ),
    //       //                       ),
    //       //                       Container(
    //       //                         padding: EdgeInsets.only(
    //       //                           left: 4,
    //       //                           right: 4,
    //       //                         ),
    //       //                         decoration: BoxDecoration(
    //       //                           borderRadius: BorderRadius.circular(12),
    //       //                           border: Border.all(
    //       //                             color: Color(0xffD9D9D9),
    //       //                           ),
    //       //                         ),
    //       //                         child: Text(
    //       //                           'Baby Haircut',
    //       //                           style: primaryTextStyle.copyWith(
    //       //                               fontSize: 10, color: Color(0xff333333)),
    //       //                         ),
    //       //                       ),
    //       //                       Container(
    //       //                         padding: EdgeInsets.only(
    //       //                           left: 4,
    //       //                           right: 4,
    //       //                         ),
    //       //                         decoration: BoxDecoration(
    //       //                           borderRadius: BorderRadius.circular(12),
    //       //                           border: Border.all(
    //       //                             color: Color(0xffD9D9D9),
    //       //                           ),
    //       //                         ),
    //       //                         child: Text(
    //       //                           'Massage Tuna',
    //       //                           style: primaryTextStyle.copyWith(
    //       //                               fontSize: 10, color: Color(0xff333333)),
    //       //                         ),
    //       //                       ),
    //       //                     ],
    //       //                   ),
    //       //                 ),
    //       //               ],
    //       //             ),
    //       //           ),
    //       //         ],
    //       //       ),
    //       //     ),
    //       //   ),

    //       //   // Single list item 2

    //       //   SizedBox(
    //       //     height: 20,
    //       //   ),

    //       //   Container(
    //       //     height: 80,
    //       //     decoration: BoxDecoration(
    //       //       color: Colors.white,
    //       //       borderRadius: BorderRadius.circular(12),
    //       //       boxShadow: [
    //       //         BoxShadow(
    //       //             color: Colors.grey.withOpacity(0.5),
    //       //             spreadRadius: 2,
    //       //             blurRadius: 4,
    //       //             offset: Offset(0, 3)),
    //       //       ],
    //       //     ),
    //       //     child: Row(
    //       //       children: [
    //       //         Container(
    //       //           margin: EdgeInsets.only(
    //       //             right: 10,
    //       //           ),
    //       //           child: Image.asset(
    //       //             'assets/image_baby2.png',
    //       //             width: 70,
    //       //           ),
    //       //         ),
    //       //         Expanded(
    //       //           child: Column(
    //       //             crossAxisAlignment: CrossAxisAlignment.start,
    //       //             children: [
    //       //               Container(
    //       //                 margin: EdgeInsets.only(
    //       //                   top: 10,
    //       //                 ),
    //       //                 child: Text(
    //       //                   'Baby and Kid’s Therapy',
    //       //                   style: primaryTextStyle.copyWith(
    //       //                     fontSize: 16,
    //       //                     color: Colors.black,
    //       //                   ),
    //       //                 ),
    //       //               ),
    //       //               Container(
    //       //                 margin: EdgeInsets.only(
    //       //                   top: 5,
    //       //                 ),
    //       //                 child: Text(
    //       //                   'Perawatan untuk anak dan bayi yang sedang sakit',
    //       //                   style: primaryTextStyle.copyWith(
    //       //                     fontSize: 10,
    //       //                     fontWeight: medium,
    //       //                     color: Colors.black,
    //       //                   ),
    //       //                 ),
    //       //               ),
    //       //               Container(
    //       //                 margin: EdgeInsets.only(
    //       //                   top: 8,
    //       //                 ),
    //       //                 child: Row(
    //       //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       //                   children: [
    //       //                     Container(
    //       //                       padding: EdgeInsets.only(
    //       //                         left: 4,
    //       //                         right: 4,
    //       //                       ),
    //       //                       decoration: BoxDecoration(
    //       //                         borderRadius: BorderRadius.circular(12),
    //       //                         border: Border.all(
    //       //                           color: Color(0xffD9D9D9),
    //       //                         ),
    //       //                       ),
    //       //                       child: Text(
    //       //                         'Baby Massage',
    //       //                         style: primaryTextStyle.copyWith(
    //       //                             fontSize: 10, color: Color(0xff333333)),
    //       //                       ),
    //       //                     ),
    //       //                     Container(
    //       //                       padding: EdgeInsets.only(
    //       //                         left: 4,
    //       //                         right: 4,
    //       //                       ),
    //       //                       decoration: BoxDecoration(
    //       //                         borderRadius: BorderRadius.circular(12),
    //       //                         border: Border.all(
    //       //                           color: Color(0xffD9D9D9),
    //       //                         ),
    //       //                       ),
    //       //                       child: Text(
    //       //                         'Baby Haircut',
    //       //                         style: primaryTextStyle.copyWith(
    //       //                             fontSize: 10, color: Color(0xff333333)),
    //       //                       ),
    //       //                     ),
    //       //                     Container(
    //       //                       padding: EdgeInsets.only(
    //       //                         left: 4,
    //       //                         right: 4,
    //       //                       ),
    //       //                       decoration: BoxDecoration(
    //       //                         borderRadius: BorderRadius.circular(12),
    //       //                         border: Border.all(
    //       //                           color: Color(0xffD9D9D9),
    //       //                         ),
    //       //                       ),
    //       //                       child: Text(
    //       //                         'Massage Tuna',
    //       //                         style: primaryTextStyle.copyWith(
    //       //                             fontSize: 10, color: Color(0xff333333)),
    //       //                       ),
    //       //                     ),
    //       //                   ],
    //       //                 ),
    //       //               ),
    //       //             ],
    //       //           ),
    //       //         ),
    //       //       ],
    //       //     ),
    //       //   ),

    //       //   // Single list item 3

    //       //   SizedBox(
    //       //     height: 20,
    //       //   ),

    //       //   Container(
    //       //     height: 80,
    //       //     decoration: BoxDecoration(
    //       //       color: Colors.white,
    //       //       borderRadius: BorderRadius.circular(12),
    //       //       boxShadow: [
    //       //         BoxShadow(
    //       //             color: Colors.grey.withOpacity(0.5),
    //       //             spreadRadius: 2,
    //       //             blurRadius: 4,
    //       //             offset: Offset(0, 3)),
    //       //       ],
    //       //     ),
    //       //     child: Row(
    //       //       children: [
    //       //         Container(
    //       //           margin: EdgeInsets.only(
    //       //             right: 10,
    //       //           ),
    //       //           child: Image.asset(
    //       //             'assets/image_baby3.png',
    //       //             width: 70,
    //       //           ),
    //       //         ),
    //       //         Expanded(
    //       //           child: Column(
    //       //             crossAxisAlignment: CrossAxisAlignment.start,
    //       //             children: [
    //       //               Container(
    //       //                 margin: EdgeInsets.only(
    //       //                   top: 10,
    //       //                 ),
    //       //                 child: Text(
    //       //                   'Baby and Kid’s Treatment',
    //       //                   style: primaryTextStyle.copyWith(
    //       //                     fontSize: 16,
    //       //                     color: Colors.black,
    //       //                   ),
    //       //                 ),
    //       //               ),
    //       //               Container(
    //       //                 margin: EdgeInsets.only(
    //       //                   top: 5,
    //       //                 ),
    //       //                 child: Text(
    //       //                   'Perawatan untuk anak dan bayi dari usia 0-6 tahun',
    //       //                   style: primaryTextStyle.copyWith(
    //       //                     fontSize: 10,
    //       //                     fontWeight: medium,
    //       //                     color: Colors.black,
    //       //                   ),
    //       //                 ),
    //       //               ),
    //       //               Container(
    //       //                 margin: EdgeInsets.only(
    //       //                   top: 8,
    //       //                 ),
    //       //                 child: Row(
    //       //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       //                   children: [
    //       //                     Container(
    //       //                       padding: EdgeInsets.only(
    //       //                         left: 4,
    //       //                         right: 4,
    //       //                       ),
    //       //                       decoration: BoxDecoration(
    //       //                         borderRadius: BorderRadius.circular(12),
    //       //                         border: Border.all(
    //       //                           color: Color(0xffD9D9D9),
    //       //                         ),
    //       //                       ),
    //       //                       child: Text(
    //       //                         'Baby Massage',
    //       //                         style: primaryTextStyle.copyWith(
    //       //                             fontSize: 10, color: Color(0xff333333)),
    //       //                       ),
    //       //                     ),
    //       //                     Container(
    //       //                       padding: EdgeInsets.only(
    //       //                         left: 4,
    //       //                         right: 4,
    //       //                       ),
    //       //                       decoration: BoxDecoration(
    //       //                         borderRadius: BorderRadius.circular(12),
    //       //                         border: Border.all(
    //       //                           color: Color(0xffD9D9D9),
    //       //                         ),
    //       //                       ),
    //       //                       child: Text(
    //       //                         'Baby Haircut',
    //       //                         style: primaryTextStyle.copyWith(
    //       //                             fontSize: 10, color: Color(0xff333333)),
    //       //                       ),
    //       //                     ),
    //       //                     Container(
    //       //                       padding: EdgeInsets.only(
    //       //                         left: 4,
    //       //                         right: 4,
    //       //                       ),
    //       //                       decoration: BoxDecoration(
    //       //                         borderRadius: BorderRadius.circular(12),
    //       //                         border: Border.all(
    //       //                           color: Color(0xffD9D9D9),
    //       //                         ),
    //       //                       ),
    //       //                       child: Text(
    //       //                         'Massage Tuna',
    //       //                         style: primaryTextStyle.copyWith(
    //       //                             fontSize: 10, color: Color(0xff333333)),
    //       //                       ),
    //       //                     ),
    //       //                   ],
    //       //                 ),
    //       //               ),
    //       //             ],
    //       //           ),
    //       //         ),
    //       //       ],
    //       //     ),
    //       //   ),

    //       //   // Single list item 4
    //       //   SizedBox(
    //       //     height: 20,
    //       //   ),

    //       //   Container(
    //       //     height: 80,
    //       //     decoration: BoxDecoration(
    //       //       color: Colors.white,
    //       //       borderRadius: BorderRadius.circular(12),
    //       //       boxShadow: [
    //       //         BoxShadow(
    //       //             color: Colors.grey.withOpacity(0.5),
    //       //             spreadRadius: 2,
    //       //             blurRadius: 4,
    //       //             offset: Offset(0, 3)),
    //       //       ],
    //       //     ),
    //       //     child: Row(
    //       //       children: [
    //       //         Container(
    //       //           margin: EdgeInsets.only(
    //       //             right: 10,
    //       //           ),
    //       //           child: Image.asset(
    //       //             'assets/image_baby4.png',
    //       //             width: 70,
    //       //           ),
    //       //         ),
    //       //         Expanded(
    //       //           child: Column(
    //       //             crossAxisAlignment: CrossAxisAlignment.start,
    //       //             children: [
    //       //               Container(
    //       //                 margin: EdgeInsets.only(
    //       //                   top: 10,
    //       //                 ),
    //       //                 child: Text(
    //       //                   'Pre & Post Natal Care',
    //       //                   style: primaryTextStyle.copyWith(
    //       //                     fontSize: 16,
    //       //                     color: Colors.black,
    //       //                   ),
    //       //                 ),
    //       //               ),
    //       //               Container(
    //       //                 margin: EdgeInsets.only(
    //       //                   top: 5,
    //       //                 ),
    //       //                 child: Text(
    //       //                   'Perawatan untuk ibu hamil dan menyusui',
    //       //                   style: primaryTextStyle.copyWith(
    //       //                     fontSize: 10,
    //       //                     fontWeight: medium,
    //       //                     color: Colors.black,
    //       //                   ),
    //       //                 ),
    //       //               ),
    //       //               Container(
    //       //                 margin: EdgeInsets.only(
    //       //                   top: 8,
    //       //                 ),
    //       //                 child: Row(
    //       //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       //                   children: [
    //       //                     Container(
    //       //                       padding: EdgeInsets.only(
    //       //                         left: 4,
    //       //                         right: 4,
    //       //                       ),
    //       //                       decoration: BoxDecoration(
    //       //                         borderRadius: BorderRadius.circular(12),
    //       //                         border: Border.all(
    //       //                           color: Color(0xffD9D9D9),
    //       //                         ),
    //       //                       ),
    //       //                       child: Text(
    //       //                         'Baby Massage',
    //       //                         style: primaryTextStyle.copyWith(
    //       //                             fontSize: 10, color: Color(0xff333333)),
    //       //                       ),
    //       //                     ),
    //       //                     Container(
    //       //                       padding: EdgeInsets.only(
    //       //                         left: 4,
    //       //                         right: 4,
    //       //                       ),
    //       //                       decoration: BoxDecoration(
    //       //                         borderRadius: BorderRadius.circular(12),
    //       //                         border: Border.all(
    //       //                           color: Color(0xffD9D9D9),
    //       //                         ),
    //       //                       ),
    //       //                       child: Text(
    //       //                         'Baby Haircut',
    //       //                         style: primaryTextStyle.copyWith(
    //       //                             fontSize: 10, color: Color(0xff333333)),
    //       //                       ),
    //       //                     ),
    //       //                     Container(
    //       //                       padding: EdgeInsets.only(
    //       //                         left: 4,
    //       //                         right: 4,
    //       //                       ),
    //       //                       decoration: BoxDecoration(
    //       //                         borderRadius: BorderRadius.circular(12),
    //       //                         border: Border.all(
    //       //                           color: Color(0xffD9D9D9),
    //       //                         ),
    //       //                       ),
    //       //                       child: Text(
    //       //                         'Massage Tuna',
    //       //                         style: primaryTextStyle.copyWith(
    //       //                             fontSize: 10, color: Color(0xff333333)),
    //       //                       ),
    //       //                     ),
    //       //                   ],
    //       //                 ),
    //       //               ),
    //       //             ],
    //       //           ),
    //       //         ),
    //       //       ],
    //       //     ),
    //       //   ),
    //       // ],
    //     ),
    //   );
    // }

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
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  'Kategori Layanan',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: bold,
                  ),
                ),
              ),
              // list(),
            ],
          ),
        ),
      ),
    );
  }
}
