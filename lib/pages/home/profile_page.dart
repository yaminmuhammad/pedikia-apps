import 'package:flutter/material.dart';
import 'package:pedikia/models/user_model.dart';
import 'package:pedikia/providers/auth_provider.dart';
import 'package:pedikia/providers/order_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widget/loading_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    handleLogout() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.logout(user.token)) {
        // ignore: use_build_context_synchronously
        Navigator.pushNamedAndRemoveUntil(
            context, '/sign-in', (route) => false);
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              'Logout Berhasil!',
              textAlign: TextAlign.center,
            )));
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: alertColor,
            content: const Text(
              'Gagal Logout!',
              textAlign: TextAlign.center,
            )));
      }

      setState(() {
        isLoading = false;
      });
    }

    confirmButtonLogout() {
      return SizedBox(
        width: 100,
        height: 44,
        child: TextButton(
          onPressed: handleLogout,
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLoading
                  ? SizedBox(
                      width: 12,
                      height: 12,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation(
                          primaryColor,
                        ),
                      ),
                    )
                  : const SizedBox(
                      width: 0,
                    ),
              SizedBox(
                width: isLoading ? -5 : 5,
              ),
              Text(
                isLoading ? 'Loading' : 'Okay',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  color: whiteColor,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Future<void> showLogoutDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => SizedBox(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            // backgroundColor: backgroundColor3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: Icon(
                      Icons.logout,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Anda Yakin Untuk Logout?',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      confirmButtonLogout(),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        width: 100,
                        height: 44,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: whiteColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          child: Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: user.profilePhotoUrl,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${user.name}',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          color: whiteColor,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '@${user.email}',
                        style: subtitleTextStyle.copyWith(
                            fontSize: 16, color: whiteColor),
                      ),
                    ],
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pushNamedAndRemoveUntil(
                //         context, '/sign-in', (route) => false);
                //   },
                //   child: Image.asset(
                //     'assets/button_exit.png',
                //     width: 20,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: primaryTextStyle.copyWith(
                fontSize: 13,
                color: timeColor,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: timeColor,
            ),
          ],
        ),
      );
    }

    Widget SignOutButton() {
      return Container(
        height: 40,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        child: TextButton(
          onPressed: () {
            showLogoutDialog();
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Out',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.exit_to_app,
                color: whiteColor,
                size: 20,
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(
              // color: backgroundColor3,
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: menuItem(
                  'Edit Profile',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/history');
                },
                child: menuItem(
                  'Your Order',
                ),
              ),
              SizedBox(
                height: 180,
              ),
              SignOutButton(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
        // logout(),
      ],
    );
  }
}
