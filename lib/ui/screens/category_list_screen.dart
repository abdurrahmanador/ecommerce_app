import 'package:ecommerce/ui/widgets/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../presentation/state_holders/state_holder_controller.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
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
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          title: Text("Wishlist",style: TextStyle(
              color: Colors.black
          ),),
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
