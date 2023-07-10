import 'package:flutter/material.dart';
import 'package:pedikia_id/models/user_model.dart';
import 'package:pedikia_id/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:pedikia_id/theme.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    TextEditingController nameController =
        TextEditingController(text: user.name);
    TextEditingController phoneController =
        TextEditingController(text: user.phone);
    TextEditingController addressController =
        TextEditingController(text: user.address);
    TextEditingController cityController =
        TextEditingController(text: user.city);
    TextEditingController emailController =
        TextEditingController(text: user.email);

    handleEditProfile() async {
      if (await authProvider.editProfile(
        name: nameController.text,
        phone: phoneController.text,
        address: addressController.text,
        city: cityController.text,
        email: emailController.text,
        token: authProvider.user.token!,
      )) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
            content: const Text(
              'Profile Berhasil Diperbarui',
              textAlign: TextAlign.center,
            ),
          ),
        );
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: const Text(
              'Gagal Update Profile!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
    }

    header() {
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.green,
            ),
            onPressed: () {
              handleEditProfile();
            },
          )
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: primaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: nameController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: user.name,
                // hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Phone',
              style: primaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: phoneController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: user.phone,
                // hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget addressInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: primaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: addressController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: user.address,
                // hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget cityInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'City',
              style: primaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: cityController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: user.city,
                // hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: emailController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: user.email,
                // hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    user.profilePhotoUrl,
                  ),
                ),
              ),
            ),
            nameInput(),
            phoneInput(),
            addressInput(),
            cityInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
