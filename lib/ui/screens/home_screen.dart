import 'package:ecommerce/ui/screens/category_list_screen.dart';
import 'package:ecommerce/ui/screens/product_list_screen.dart';
import 'package:ecommerce/ui/utility/assetsUtilss.dart';
import 'package:ecommerce/ui/widgets/home/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../presentation/state_holders/state_holder_controller.dart';
import '../widgets/category_card.dart';
import '../widgets/circular_icon_button.dart';
import '../widgets/product_cart.dart';
import '../widgets/section_titles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SvgPicture.asset(
              AssetUtills.logoNav,
            ),
            Spacer(),
            CircularIconButton(
              icon: Icons.person_2_rounded,
              onTap: () {},
            ),
            SizedBox(
              width: 8,
            ),
            CircularIconButton(
              icon: Icons.phone,
              onTap: () {},
            ),
            SizedBox(
              width: 8,
            ),
            CircularIconButton(
              icon: Icons.notifications_active,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.all(16),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 16.0),
              HomeSlider(),
              SizedBox(height: 16.0),
              SectionHeader(
                onTap: () {
                  Get.find<MainBottomNavController>().changeScreen(1);
                },
                title: "All Categories",
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryCard();
                  },
                ),
              ),
              SizedBox(height: 8.0),
              SectionHeader(
                  onTap: () {
                    Get.to(ProductListScreen());
                  },
                  title: "Popular"),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProductCart();
                    }),
              ),
              SizedBox(height: 8.0),
              SectionHeader(
                  onTap: () {
                    Get.to(ProductListScreen());
                  },
                  title: "Special"),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProductCart();
                    }),
              ),
              SizedBox(height: 16.0),
              SectionHeader(
                  onTap: () {
                    Get.to(ProductListScreen());
                  },
                  title: "New"),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProductCart();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
