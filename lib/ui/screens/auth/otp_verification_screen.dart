import 'package:ecommerce/ui/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utility/assetsUtilss.dart';
import 'complete_profile_screen.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    OTPResend();
  }
  void OTPResend(){
    Future.delayed(Duration(seconds: 15)).then((_) =>
        Get.offAll(()=>CompleteProfileScreen())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Center(
                  child: SvgPicture.asset(
                AssetUtills.logo,
                width: 100,
              )),
              SizedBox(height: 10),
              Text("Enter your OTP code",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w800, fontSize: 24)),
              SizedBox(height: 8),
              Text("A 4 digit OTP code has been sent",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 16),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveColor: Colors.white,
                    selectedFillColor: Colors.white,
                    activeColor: AppColor.primaryColor,
                    inactiveFillColor: Colors.white,
                    selectedColor: Colors.green),
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
                onCompleted: (v) {},
                onChanged: (value) {},
                appContext: context,
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => CompleteProfileScreen());
                  },
                  child: Text("Submit"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(text: "This code will expire in "),
                    TextSpan(
                        text: "120s",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor))
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                  },
                  child: Text("Resend OTP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)))
            ],
          ),
        ),
      ),
    ));
  }
}
