import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var _isObscured;

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  'Sign In',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Silahkan Sign In terlebih dahulu',
                  style: subtitleTextStyle,
                ),
                SizedBox(height: 50.0),
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
                              hintText: 'Masukkan Email',
                              hintStyle: subtitleTextStyle,
                            ),
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
                                        Icons.visibility_off_outlined,
                                        color: primaryColor,
                                      ),
                                onPressed: () {
                                  setState(() {
                                    _isObscured = !_isObscured;
                                  });
                                },
                              ),
                              border: InputBorder.none,
                              hintText: 'Masukkan Password',
                              hintStyle: subtitleTextStyle,
                            ),
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
                      'Masuk',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun ? ',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/sign-up');
                        },
                        child: Text(
                          'Daftar',
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
