import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pedikia/pages/home/edit_profile_page.dart';
import 'package:pedikia/pages/home/home_page.dart';
import 'package:pedikia/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => const EditProfilePage()));
                        },
                        child: Text(
                          "Ubah",
                          style: primaryTextStyle.copyWith(
                            color: Colors.white,
                            fontWeight: medium,
                            fontSize: 20,
                          ),
                        ),
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
                                enabled: false,
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
                                enabled: false,
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
                                enabled: false,
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
                                enabled: false,
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
                          child: OutlinedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0)), //this right here
                                        child: SizedBox(
                                          height: 180,
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Anda yakin ingin logout?',
                                                  style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 18,
                                                    fontWeight: medium,
                                                  ),
                                                ),
                                                const SizedBox(height: 40.0),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 100.0,
                                                      height: 40.0,
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.pushNamed(context, '/sign-in');
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor: primaryColor,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10.0),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Ya",
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight: medium,
                                                              fontSize: 20
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    SizedBox(
                                                      width: 100.0,
                                                      height: 40.0,
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.of(context).pop(true);
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor: primaryColor,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10.0),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Tidak",
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight: medium,
                                                              fontSize: 20
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                        side: const BorderSide(
                                          color: Color.fromARGB(1, 187, 186, 186),
                                          width: 1.5,
                                        )
                                    )
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Logout',
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 20,
                                      fontWeight: medium,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Icon(Icons.logout, color: primaryColor)
                                ],
                              )
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