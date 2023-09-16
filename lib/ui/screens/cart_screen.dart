import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../presentation/state_holders/state_holder_controller.dart';

class CartScreen extends StatefulWidget{

  const CartScreen({super.key});

  @override
  State<CartScreen> createState()=>_CartScreen();

}

class _CartScreen extends State<CartScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){              Get.find<MainBottomNavController>().backToHome();

          },
          icon: Icon(Icons.arrow_back,color:Colors.black),
        ),
        title: Text("Cart",style: TextStyle(
          color: Colors.black
        ),),
      ),
    );
  }

}