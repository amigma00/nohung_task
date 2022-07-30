import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:nohung_task/app/modules/nohung_dish_info/views/nohung_dish_info_view.dart';
import 'package:nohung_task/components/nohung_navbar.dart';
import 'package:nohung_task/components/rounded_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../components/nohung_chip.dart';
import '../../../../components/nohung_dish_tile.dart';
import '../../../../components/nohung_restaurant_tile.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NohungNavBar(),
      backgroundColor: Vx.gray100,
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.bars,
          color: Vx.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        //   surfaceTintColor: Colors.transparent,
        title: "Search Food".text.bold.black.make(),
        centerTitle: true,
        actions: [
          Padding(
              padding: EdgeInsets.all(16),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    "assets/user.png",
                    fit: BoxFit.cover,
                    scale: 1,
                    height: 50,
                    width: 25,
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RoundedBox(
                        childPadding: 12,
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.magnifyingGlass,
                              size: 20,
                              color: Vx.black,
                            ),
                            15.widthBox,
                            "Healthy Food"
                                .text
                                .fontWeight(FontWeight.w500)
                                .lg
                                .black
                                .make(),
                          ],
                        )),
                  ),
                  15.widthBox,
                  RoundedBox(
                      color: Vx.white,
                      childPadding: 12,
                      child: Icon(FontAwesomeIcons.sliders, size: 20)),
                ],
              ),
              40.heightBox,
              SizedBox(
                height: 40,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          NohungChip(
                            label:
                                controller.data[index]["color"] == Colors.amber
                                    ? "${controller.data[index]["label"]}"
                                        .text
                                        .white
                                        .make()
                                    : "${controller.data[index]["label"]}"
                                        .text
                                        .black
                                        .make(),
                            image: controller.data[index]["image"],
                            color: controller.data[index]["color"],
                          ),
                          10.widthBox
                        ],
                      );
                    }),
              ),
              20.heightBox,
              SizedBox(
                height: 205,
                child: ListView.builder(
                    itemCount: controller.dishInfo.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          NohungDishTile(
                            onTap: () =>
                                Get.to(() => const NohungDishInfoView()),
                            title: controller.dishInfo[index]["title"],
                            subTitle: controller.dishInfo[index]["subTitle"],
                            price: controller.dishInfo[index]["price"],
                            heartType: controller.dishInfo[index]["heartType"],
                            image: controller.dishInfo[index]["image"],
                          ),
                          15.widthBox
                        ],
                      );
                    })),
              ),
              40.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Favourite Restaurants".text.lg.bold.black.make(),
                  "See all".text.bold.gray500.make(),
                ],
              ),
              20.heightBox,
              SizedBox(
                height: 90,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.restInfo.length,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          NohungRestauranTile(
                            title: controller.restInfo[index]["title"],
                            subTitle: controller.restInfo[index]["subTitle"],
                            image: controller.restInfo[index]["image"],
                            rating:
                                controller.restInfo[index]["rating"].toDouble(),
                          ),
                          15.widthBox
                        ],
                      );
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
