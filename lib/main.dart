import 'package:flutter/material.dart';
import 'package:pedikia_id/pages/cart_page.dart';
import 'package:pedikia_id/pages/checkout_page.dart';
import 'package:pedikia_id/pages/edit_profile_page.dart';
import 'package:pedikia_id/pages/home/history_page.dart';
import 'package:pedikia_id/pages/home/main_page.dart';
import 'package:pedikia_id/pages/sign_in_page.dart';
import 'package:pedikia_id/pages/sign_up_page.dart';
import 'package:pedikia_id/pages/splash_page.dart';
import 'package:pedikia_id/providers/auth_provider.dart';
import 'package:pedikia_id/providers/transaction_provider.dart';
import 'package:pedikia_id/providers/order_provider.dart';
import 'package:pedikia_id/providers/wishlist_provider.dart';
import 'package:pedikia_id/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:pedikia_id/providers/serve_provider.dart';
import 'package:pedikia_id/providers/page_provider.dart';
import 'package:pedikia_id/providers/cart_provider.dart';
import 'package:pedikia_id/pages/checkout_success_page.dart';

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
        ChangeNotifierProvider(
          create: (context) => OrderProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(
                authService: AuthService(),
              ),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
          '/history': (context) => HistoryPage(),
        },
      ),
    );
  }
}
