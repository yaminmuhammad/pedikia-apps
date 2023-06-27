import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pedikia/providers/auth_provider.dart';
import 'package:pedikia/providers/serve_provider.dart';
import 'package:pedikia/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  final AuthService authService;
  Widget nextPage;

  SplashPage({this.authService, Key key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // const SplashPage({super.key});
  @override
  void initState() {
    // TODO: implement initState

    getInit();

    super.initState();
  }

  getInit() async {
    await Provider.of<ServeProvider>(context, listen: false).getServices();
    // UserModel user = await AuthService.getUser();
    // if (user == null) {
    //   nextPage = SignInPage();
    // } else {
    //   AuthProvider authProvider =
    //       Provider.of<AuthProvider>(context, listen: false);
    //   authProvider.user = user;
    //   nextPage = MainPage();
    // }
    sessionCheck();
  }

  Future sessionCheck() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final email = sharedPreferences.getString('email');
    final password = sharedPreferences.getString('password');
    final token = sharedPreferences.getString('token');

    if (token != null) {
      // ignore: use_build_context_synchronously
      await Provider.of<AuthProvider>(context, listen: false)
          .login(email: email, password: password);

      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, '/home');
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, '/sign-in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            // width: 130,
            // height: 150,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/pedikia.png'))),
          ),
        ));
  }
}

// class SplashPage extends StatelessWidget {
//   final AuthService authService;
//   Widget nextPage;

//   SplashPage({this.authService, Key key}) : super(key: key);

//   Future NextPage(BuildContext context) async {
//     await Provider.of<ServeProvider>(context, listen: false).getServices();
//     UserModel user = await authService.getUser();
//     if (user == null) {
//       nextPage = SignInPage();
//     } else {
//       AuthProvider authProvider =
//           Provider.of<AuthProvider>(context, listen: false);
//       authProvider.user = user;
//       nextPage = MainPage();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return SplashScreenView(
//             home: nextPage,
//             duration: 3000,
//             imageSize: 100,
//             backgroundColor: whiteColor,
//             imageSrc: "assets/logo_1.png",
//           );
//         } else {
//           return Container();
//         }
//       },
//       future: NextPage(context),
//     );
//   }
// }
