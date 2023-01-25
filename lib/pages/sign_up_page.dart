import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

const List<String> list = <String>['Pengguna', 'Terapis'];

class _SignUpPageState extends State<SignUpPage> {
  var _isObscured;
  String dropdownValue = list.first;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  'Sign Up',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Silahkan isi form registrasi dibawah ini',
                  style: subtitleTextStyle,
                ),
                SizedBox(height: 30.0),
                Text(
                  'Nama Lengkap',
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.face,
                          color: primaryColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            style: subtitleTextStyle,
                            decoration: InputDecoration.collapsed(
                                hintText: 'Nama Lengkap',
                                hintStyle: subtitleTextStyle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'No. Handphone',
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.smartphone,
                          color: primaryColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            style: subtitleTextStyle,
                            decoration: InputDecoration.collapsed(
                                hintText: 'Nomor Hp',
                                hintStyle: subtitleTextStyle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Daftar Sebagai',
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: primaryColor,
                      ),
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(12),
                      style: subtitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Alamat Email',
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: primaryColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            style: subtitleTextStyle,
                            decoration: InputDecoration.collapsed(
                                hintText: 'Alamat Email',
                                hintStyle: subtitleTextStyle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Password',
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.lock,
                          color: primaryColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            style: subtitleTextStyle,
                            obscureText: _isObscured,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  padding: EdgeInsetsDirectional.only(end: 12),
                                  icon: _isObscured
                                      ? Icon(
                                          Icons.visibility,
                                          color: primaryColor,
                                        )
                                      : Icon(
                                          Icons.visibility_off,
                                          color: primaryColor,
                                        ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscured = !_isObscured;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: subtitleTextStyle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 30),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Daftar',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun? ',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Masuk',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
