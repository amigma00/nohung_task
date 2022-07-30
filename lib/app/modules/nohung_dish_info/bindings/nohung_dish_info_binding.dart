import 'package:get/get.dart';

import '../controllers/nohung_dish_info_controller.dart';

class NohungDishInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NohungDishInfoController>(
      () => NohungDishInfoController(),
    );
  }
}
