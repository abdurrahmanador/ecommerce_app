import 'package:ecommerce/ui/screens/auth/email_verification_screen.dart';
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

  void navigationToLogin() {
    Future.delayed(Duration(seconds: 3)).then((_) {
      Get.offAll(()=>EmailVerificationScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Center(child:SvgPicture.asset(AssetUtills.logo,width: 100,)),
          Spacer(),
          CircularProgressIndicator(),
          SizedBox(height:16),
          Text("Version 1.0.0"),
          SizedBox(height: 16)
        ],
      ),
    );
  }
}
