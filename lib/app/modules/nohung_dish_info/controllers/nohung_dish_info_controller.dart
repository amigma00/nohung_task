import 'package:get/get.dart';

class NohungDishInfoController extends GetxController {
  List<Map<String, dynamic>> toping = [
    {"image": "assets/onion.jpeg", "action": "add"},
    {"image": "assets/peas.jpeg", "action": "remove"},
    {"image": "assets/tomato.jpeg", "action": ""},
    {"image": "assets/drink.jpeg", "action": ""},
    {"image": "assets/peas.jpeg", "action": ""},
  ];
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
