import 'package:flutter/material.dart';
import 'package:pedikia/providers/auth_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:pedikia/widget/loading_button.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _isObscured;
  final myController = TextEditingController();
  String dropdownValue = "PENGGUNA";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isObscured = true;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController rolesController = TextEditingController(text: '');
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.register(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        username: usernameController.text,
        phone: phoneController.text,
        roles: dropdownValue,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'Gagal Register',
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

    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 28.0,
        ),
        child: Text(
          "Daftar",
          style: titleTextStyle,
        ),
      );
    }

    Widget nameInput() {
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
                Icons.account_circle,
                color: primaryColor,
                size: 20,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  controller: nameController,
                  style: subtitleTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Nama Lengkap',
                    hintStyle: subtitleTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget usernameInput() {
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
                Icons.people_alt_outlined,
                color: primaryColor,
                size: 20,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  controller: usernameController,
                  style: subtitleTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Username',
                    hintStyle: subtitleTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget phoneInput() {
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
                Icons.phone,
                color: primaryColor,
                size: 20,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  controller: phoneController,
                  style: subtitleTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'No. Handphone',
                    hintStyle: subtitleTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
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

    Widget dropdownInput() {
      return Container(
        height: 51,
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
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
                myController.text = dropdownValue;
              });
            },
            items: <String>['PENGGUNA', 'TERAPIS']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      );
    }

    Widget signupButton() {
      return Container(
        height: 40,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        child: TextButton(
          onPressed: () {
            //function for regist code here
            handleSignUp();
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
      );
    }

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
                          header(),
                          nameInput(),
                          SizedBox(height: 20.0),
                          usernameInput(),
                          SizedBox(height: 20.0),
                          phoneInput(),
                          SizedBox(height: 20.0),
                          emailInput(),
                          SizedBox(height: 20.0),
                          passwordInput(),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              "Daftar sebagai :",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          SizedBox(height: 5),
                          dropdownInput(),
                          SizedBox(height: 10),
                          isLoading ? LoadingButton() : signupButton(),
                          SizedBox(height: 10),
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
