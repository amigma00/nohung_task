import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeController extends GetxController {
  final List<Map<String, dynamic>> data = [
    {"label": "Fast Food", 'image': "assets/pic1.jpeg", 'color': Colors.amber},
    {"label": "Fruits", 'image': "assets/strawberry.jpeg", 'color': Vx.gray300},
    {"label": "Drinks", 'image': "assets/drink.jpeg", 'color': Vx.gray300},
  ];

  final List<Map<String, dynamic>> dishInfo = [
    {
      "title": "Grilled Skewers",
      "subTitle": "Spicy mutton",
      "price": "\$36.00",
      "heartType": "solid",
      "image": "assets/pic1.jpeg"
    },
    {
      "title": "Thai Spaghetti",
      "subTitle": "Fresh Tomato",
      "price": "\$12.00",
      "heartType": "outline",
      "image": "assets/pic2.jpeg"
    },
    {
      "title": "Malai Kofta",
      "subTitle": "Steamed Chiken",
      "price": "\$10.00",
      "heartType": "solid",
      "image": "assets/pic3.jpeg"
    }
  ];

  final List<Map<String, dynamic>> restInfo = [
    {
      "image": "assets/pic1.jpeg",
      "title": "Foodcave\nRestaurant",
      "subTitle": "New York, USA",
      "rating": 4.5
    },
    {
      "image": "assets/pic2.jpeg",
      "title": "Downtown\nRestaurant",
      "subTitle": "Nashville, USA",
      "rating": 3
    },
    {
      "image": "assets/pic3.jpeg",
      "title": "Foodcave\nRestaurant",
      "subTitle": "New York, USA",
      "rating": 2.5
    }
  ];
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
}
