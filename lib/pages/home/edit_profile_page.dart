import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

import 'home_page.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    ClipPath(
                      clipper: ClipPathClass(),
                      child: Container(
                        height: 113,
                        color: primaryColor,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          icon: const Icon(Icons.arrow_back, color: Colors.white)
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 65.0, bottom: 50.0),
                      child: Container(
                        padding: const EdgeInsets.all(0.0),
                        height: 150,
                        width: 150,
                        child: CircleAvatar(
                          backgroundColor: greyColor,
                          backgroundImage: const AssetImage("assets/image_pp.png"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 220, top: 170),
                      child: Container(
                        padding: const EdgeInsets.all(0.0),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: greyColor),
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.camera_alt_outlined),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Expanded(
                              child: TextFormField(
                                initialValue: 'Nama',
                                style: subtitleTextStyle,
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  labelText: 'Nama',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(1, 187, 186, 186),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                initialValue: 'xxx@xxx.xxx',
                                style: subtitleTextStyle,
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  labelText: 'Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(1, 187, 186, 186),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                initialValue: '08XXXXXXXXXX',
                                style: subtitleTextStyle,
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  labelText: 'Nomor Handphone/WhatsApp',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(1, 187, 186, 186),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Expanded(
                              child: TextFormField(
                                maxLines: 4,
                                keyboardType: TextInputType.text,
                                initialValue: 'Jalan Alpha Desa Betha Kecamatan Gamma Kabupaten Delta',
                                style: subtitleTextStyle,
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  labelText: 'Alamat Lengkap',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(1, 187, 186, 186),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 15),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Simpan',
                              style: whiteTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: medium,
                              ),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
