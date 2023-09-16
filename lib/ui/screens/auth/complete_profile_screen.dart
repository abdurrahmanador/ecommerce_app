import 'package:ecommerce/ui/screens/home_screen.dart';
import 'package:ecommerce/ui/screens/main_bottom_nav_bar.dart';
import 'package:ecommerce/ui/utility/assetsUtilss.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  SvgPicture.asset(
                    AssetUtills.logo,
                    width: 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Complete Profile",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    "Get started with us with your details",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(hintText: "First Name"),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Last Name"),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Mobile"),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(hintText: "City"),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: "Shipping Address",
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {Get.offAll(()=>MainBottomNavBar());}, child: Text("Complete")))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
