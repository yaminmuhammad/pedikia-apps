import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pedikia/pages/home/edit_profile_page.dart';
import 'package:pedikia/theme.dart';

class ProfilePage extends StatefulWidget {
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => EditProfilePage()));
              },
              child: Text(
                "Ubah",
                style: primaryTextStyle.copyWith(
                    color: primaryColor, fontWeight: medium, fontSize: 20),
              ),
            ),
            SizedBox(width: 12.0)
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 150,
                  width: 150,
                  child: CircleAvatar(
                    backgroundColor: greyColor,
                    backgroundImage: AssetImage(""),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
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
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(1, 187, 186, 186),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
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
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(1, 187, 186, 186),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
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
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(1, 187, 186, 186),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
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
                                initialValue:
                                    'Jalan Alpha Desa Betha Kecamatan Gamma Kabupaten Delta',
                                enabled: false,
                                style: subtitleTextStyle,
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  labelText: 'Alamat Lengkap',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(1, 187, 186, 186),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}
