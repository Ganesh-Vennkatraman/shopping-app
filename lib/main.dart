import 'package:flutter/material.dart';
import 'package:shoppingapp/checkout.dart';
import 'package:shoppingapp/collection_page.dart';
import 'package:shoppingapp/each_list_page.dart';
import 'package:shoppingapp/hello_page.dart';
import 'package:shoppingapp/loyalty_card.dart';
import 'package:shoppingapp/main_page.dart';
import 'package:shoppingapp/payment_method.dart';
import 'package:shoppingapp/product_page.dart';
import 'package:shoppingapp/search_page.dart';
import 'package:shoppingapp/slider_page.dart';
import 'package:shoppingapp/success.dart';
import 'package:shoppingapp/winter_collection_page.dart';
import 'package:shoppingapp/wishlist.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'forgot_password.dart';
import 'list_page.dart';
import 'cart.dart';
import 'account_page.dart';
import 'stores_page.dart';
import 'settings_page.dart';
import 'selecting_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        '/login' : (context) => LoginScreen(),
        '/signup' : (context) => SignUpPage(),
        '/forgot' : (context) => ForgotPassword(),
        '/hello' : (context) => HelloPage(),
        '/main' : (context) => MainPage(),
        '/product' : (context) => ProductPage(),
        '/list' : (context) => AppHome(),
        '/winter' : (context) => WinterCollectionPage(),
        '/eachlist' : (context) => EachListPage(),
        '/cart' : (context) => Cart(),
        '/checkout' : (context) =>CheckoutPage(),
        '/success' : (context) => SuccessPage(),
        '/wishlist' : (context) => WishList(),
        '/account' : (context) => Account(),
        '/stores' : (context) => Stores(),
        '/settings' : (context) => SettingsPage(),
        '/selection' : (context) => Selection(),
        '/loyalty' : (context) => LoyaltyCard(),
        '/collection' : (context) => Collection(),
        '/slider' : (context) => SliderPage(),
        '/payment' : (context)=> PaymentMethod(),
        '/search' : (context) =>SearchPage(),

      },
    );
  }
}

