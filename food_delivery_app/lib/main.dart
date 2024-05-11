import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import provider package
import 'package:food_delivery_app/widgets/Navigation.dart';
import 'package:food_delivery_app/providers/FoodProvider.dart'; // Import your CartProvider if you have one
import 'package:food_delivery_app/screen/WelcomePage.dart';
import 'package:food_delivery_app/screen/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FoodProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: splashPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => Login(),
        "/welcome": (context) => WelcomePage(),
      },
    );
  }
}