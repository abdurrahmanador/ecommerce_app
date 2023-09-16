import 'package:ecommerce/ui/utility/assetsUtilss.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'otp_verification_screen.dart';


class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 160,),
            Center(
                child: SvgPicture.asset(
              AssetUtills.logo,
              width: 100,
            )),
            Text("Welcome back", style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
              fontSize: 24
            )),
            SizedBox(height:8),
            Text("Please enter your email",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 16, color: Colors.grey)),
            SizedBox(height:16),

            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                hintText: "Email"
              ),
            ),
            SizedBox(height:8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(()=>OTPVerification());
                },
                child: Text("Next"),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
