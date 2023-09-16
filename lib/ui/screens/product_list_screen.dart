import 'package:ecommerce/presentation/state_holders/state_holder_controller.dart';
import 'package:ecommerce/ui/widgets/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.find<MainBottomNavController>().backToHome();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.find<MainBottomNavController>().backToHome();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black54,
            ),
          ),
          title: Text(
            "Categories",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 16),
              itemBuilder: (context, index) {
                return FittedBox(child: ProductCart());
              }),
        ),
      ),
    );
  }
}
