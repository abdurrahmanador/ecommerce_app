import 'package:ecommerce/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Crafty Bay",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 16)
        )
      ),
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    );
  }
}
