import 'package:ecommerce/ui/screens/LoginScreen.dart';
import 'package:ecommerce/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utility/assetsUtilss.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigationToLogin();
  }

  navigationToLogin() {
    Future.delayed(Duration(seconds: 3)).then((_) {
      Get.off(HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          SvgPicture.asset(AssetUtills.logo),
          Spacer(),
          CircularProgressIndicator(),
          Text("Version 1.0.0"),
          SizedBox(height: 16)
        ],
      ),
    );
  }
}
