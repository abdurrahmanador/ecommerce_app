import 'package:ecommerce/presentation/state_holders/state_holder_controller.dart';
import 'package:ecommerce/ui/screens/category_list_screen.dart';
import 'package:ecommerce/ui/screens/home_screen.dart';
import 'package:ecommerce/ui/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  List<Widget> _screens = [
    HomeScreen(),
    CategoryListScreen(),
    HomeScreen(),
    WishlistScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>
      (builder: (controller) {
        return Scaffold(
                body: _screens[controller.currentSelectedIndex],
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: controller.currentSelectedIndex,
                  onTap: controller.changeScreen,
                  selectedItemColor: Colors.green,
                  unselectedItemColor: Colors.grey,
                  showUnselectedLabels: true,
                  elevation: 4,
                  items: const [
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.category), label: "Categories"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart), label: "Cart"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_bag_outlined), label: "Wishlist"),
                  ],
                ));
      }
    );
      }
}
