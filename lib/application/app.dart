import 'package:ecommerce/application/state_holder_binders.dart';
import 'package:ecommerce/ui/screens/auth/email_verification_screen.dart';
import 'package:ecommerce/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/utility/app_color.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: StateHolderBinders(),
      debugShowCheckedModeBanner: false,
      title: "Crafty Bay",
       theme: ThemeData(
      //   primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.all(16),
          border: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
          ),
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
          ),
          disabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
          ),
        ),
        elevatedButtonTheme:ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical:12),
            textStyle: TextStyle(
              fontSize: 16,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w600
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
          )
        )
        
      ),
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    );
  }
}
