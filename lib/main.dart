import 'package:flutter/material.dart';
import 'package:pedikia/pages/cart_page.dart';
import 'package:pedikia/pages/checkout_page.dart';
import 'package:pedikia/pages/edit_profile_page.dart';
import 'package:pedikia/pages/home/main_page.dart';
import 'package:pedikia/pages/sign_in_page.dart';
import 'package:pedikia/pages/sign_up_page.dart';
import 'package:pedikia/pages/splash_page.dart';
import 'package:pedikia/providers/auth_provider.dart';
import 'package:pedikia/providers/transaction_provider.dart';
import 'package:pedikia/providers/wishlist_provider.dart';
import 'package:provider/provider.dart';
import 'package:pedikia/providers/serve_provider.dart';
import 'package:pedikia/providers/page_provider.dart';
import 'package:pedikia/providers/cart_provider.dart';
import 'package:pedikia/pages/checkout_success_page.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ServeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
          // '/checkout-success' : (context) =>
        },
      ),
    );
  }
}
