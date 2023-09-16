

import 'package:ecommerce/presentation/state_holders/state_holder_controller.dart';
import 'package:get/get.dart';

class StateHolderBinders extends Bindings{
  @override
  void dependencies(){
    Get.put(MainBottomNavController());
  }
}