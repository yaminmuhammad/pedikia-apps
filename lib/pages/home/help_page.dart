// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pedikia_id/theme.dart';

class HelpPage extends StatefulWidget {
  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabCtrl = TabController(length: 4, vsync: this);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(true),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              color: primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Apa yang bisa kami bantu?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: medium)),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      border: Border.all(
                        width: 3,
                        color: Colors.white,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 28.0,
                            ),
                            child: Text(
                              "Pertanyaan yang sering ditanyakan",
                              style:
                                  TextStyle(fontSize: 18, fontWeight: medium),
                            ),
                          ),
                          SizedBox(
                              height: 30,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TabBar(
                                      controller: tabCtrl,
                                      labelColor: Colors.white,
                                      unselectedLabelColor: Colors.grey,
                                      isScrollable: true,
                                      indicator: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          25.0,
                                        ),
                                        color: primaryColor,
                                      ),
                                      tabs: const [
                                        Tab(text: "Layanan"),
                                        Tab(text: "Cara Reservasi"),
                                        Tab(text: "Lokasi"),
                                        Tab(text: "Kelola Akun")
                                      ]))),
                          SizedBox(height: 20.0),
                          Flexible(
                            child: SizedBox(
                                width: double.maxFinite,
                                height: double.maxFinite,
                                child: TabBarView(
                                  controller: tabCtrl,
                                  children: [
                                    ListView(
                                      children: ListTile.divideTiles(
                                          //          <-- ListTile.divideTiles
                                          color: Colors.black,
                                          context: context,
                                          tiles: [
                                            ListTile(
                                                title: Text(
                                                  'Apa itu aplikasi Pedikia?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Bagaimana cara reservasi terapis?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah pembayaran dapat dilakukan secara digital?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah terapis di Pedikia sudah berpengalaman?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah ada jaminan uang kembali jika anak tidak mau dispa?',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: medium,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apa itu aplikasi Pedikia?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                          ]).toList(),
                                    ),
                                    ListView(
                                      children: ListTile.divideTiles(
                                          //          <-- ListTile.divideTiles
                                          color: Colors.black,
                                          context: context,
                                          tiles: [
                                            ListTile(
                                                title: Text(
                                                  'Bagaimana cara reservasi?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apa itu reservasi?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Adakah tutorial reservasi yang benar?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah reservasi dapat dilakukan di rumah?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah terapis dapat datang ke rumah?',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: medium,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah harus menggunakan internet ketika reservasi?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                          ]).toList(),
                                    ),
                                    ListView(
                                      children: ListTile.divideTiles(
                                          //          <-- ListTile.divideTiles
                                          color: Colors.black,
                                          context: context,
                                          tiles: [
                                            ListTile(
                                                title: Text(
                                                  'Apakah harus mengaktifkan lokasi di aplikasi ini?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Lokasi apa yang harus saya masukkan?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Bagaimana cara memasukkan lokasi?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah bisa memasukkan lokasi lebih dari satu?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah bisa memasukkan lokasi orang lain?',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: medium,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah bisa menggunakan peta untuk memasukkan lokasi?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                          ]).toList(),
                                    ),
                                    ListView(
                                      children: ListTile.divideTiles(
                                          //          <-- ListTile.divideTiles
                                          color: Colors.black,
                                          context: context,
                                          tiles: [
                                            ListTile(
                                                title: Text(
                                                  'Dimana saya dapat mengola akun?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah saya bisa mengubah data diri registrasi?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah saya dapat memasukkan foto profil?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Apakah ada aturan terkait foto profil?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Adakah jaminan data diri saya tidak disalahgunakan?',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: medium,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                            ListTile(
                                                title: Text(
                                                  'Bagaimana cara mengelola akun yang baik?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: medium),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                trailing: IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 10,
                                                      color: Colors.black),
                                                  onPressed: () {},
                                                )),
                                          ]).toList(),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
