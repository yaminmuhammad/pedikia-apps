// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

bool focus = false;

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

const List<String> list = <String>['Pengguna', 'Terapis'];

class _SignUpPageState extends State<SignUpPage> {
  dynamic _isObscured;
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
      resizeToAvoidBottomInset: false,
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
                    height: 150,
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
                              "Daftar",
                              style: titleTextStyle,
                            ),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  style: subtitleTextStyle,
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    labelText: 'Nama Lengkap',
                                    labelStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.7)
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(1, 187, 186, 186),
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(color: primaryColor)
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
                                  style: subtitleTextStyle,
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    labelText: 'No. Handphone',
                                    labelStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.7)
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(1, 187, 186, 186),
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(color: primaryColor)
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
                                  style: subtitleTextStyle,
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.7)
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(1, 187, 186, 186),
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(color: primaryColor)
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
                                  keyboardType: TextInputType.visiblePassword,
                                  style: subtitleTextStyle,
                                  obscureText: _isObscured,
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    labelText: 'Kata sandi',
                                    labelStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.7)
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(1, 187, 186, 186),
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(color: primaryColor)
                                    ),
                                    suffixIcon: IconButton(
                                      padding: EdgeInsetsDirectional.only(
                                          end: 12),
                                      icon: _isObscured
                                          ? Icon(
                                        Icons.visibility_outlined,
                                        color: Colors.black.withOpacity(0.5),
                                      )
                                          : Icon(
                                        Icons.visibility_off_outlined,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscured = !_isObscured;
                                        });
                                      },
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
                                  keyboardType: TextInputType.visiblePassword,
                                  style: subtitleTextStyle,
                                  obscureText: _isObscured,
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    labelText: 'Konfirmasi kata sandi',
                                    labelStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.7)
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(1, 187, 186, 186),
                                        width: 1.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(color: primaryColor)
                                    ),
                                    suffixIcon: IconButton(
                                      padding: EdgeInsetsDirectional.only(
                                          end: 12),
                                      icon: _isObscured
                                          ? Icon(
                                        Icons.visibility_outlined,
                                        color: Colors.black.withOpacity(0.5),
                                      )
                                          : Icon(
                                        Icons.visibility_off_outlined,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscured = !_isObscured;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "Daftar sebagai :",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                                child: Expanded(
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButtonFormField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                              color: Colors.black.withOpacity(0.7),
                                              width: 1.5
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                              color: primaryColor,
                                              width: 1.5
                                          ),
                                        ),
                                      ),
                                      value: dropdownValue,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
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
                                      items: list.map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 15),
                            child: TextButton(
                              onPressed: () {
                                //function for regist code here
                              },
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
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 20.0),
                                  child: Divider(
                                    color: Colors.black54,
                                    thickness: 1,
                                  ),
                                ),
                              ),
                              Text(
                                "Atau daftar melalui",
                                style: TextStyle(fontSize: 16),
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 20.0),
                                  child: Divider(
                                    color: Colors.black54,
                                    thickness: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/google.png",
                                width: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                "assets/facebook.png",
                                width: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Sudah punya akun?"),
                              SizedBox(
                                width: 1,
                              ),
                              TextButton(
                                child: Text(
                                  "Masuk",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue,
                                    decorationThickness: 2,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 200, top: 60),
              child: Image.asset(
                "assets/baby_2.png",
                height: MediaQuery.of(context).size.height / 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}