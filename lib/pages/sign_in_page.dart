// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pedikia/providers/auth_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:pedikia/widget/loading_button.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isChecked = false;
  var _isObscured;
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool isLoading = false;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignIn() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'Email atau Password Salah',
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
        );
      }

      setState(() {
        isLoading = false;
      });
    }

    Widget emailInput() {
      return Container(
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
                  controller: emailController,
                  style: subtitleTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Email',
                    hintStyle: subtitleTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget passwordInput() {
      return Container(
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
                  controller: passwordController,
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
                    hintText: 'Kata sandi',
                    hintStyle: subtitleTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget SignInButton() {
      return Container(
        height: 40,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        child: TextButton(
          onPressed: () {
            handleSignIn();
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
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox.expand(
        child: Container(
          color: primaryColor,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.50,
                    width: MediaQuery.of(context).size.width,
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
                              "Masuk",
                              style: titleTextStyle,
                            ),
                          ),
                          emailInput(),
                          SizedBox(height: 20.0),
                          passwordInput(),
                          SizedBox(
                            height: 10,
                          ),
                          isLoading ? LoadingButton() : SignInButton(),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Tidak punya akun?"),
                              SizedBox(
                                width: 1,
                              ),
                              TextButton(
                                child: Text(
                                  "Daftar sekarang",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue,
                                    decorationThickness: 2,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/sign-up');
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
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 200, top: 180),
                child: Image.asset(
                  "assets/baby_sleep.png",
                  height: MediaQuery.of(context).size.height / 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
