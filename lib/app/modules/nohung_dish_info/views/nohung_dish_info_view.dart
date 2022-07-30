import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:nohung_task/app/modules/cart/views/cart_view.dart';
import 'package:nohung_task/components/nohung_topings.dart';
import 'package:nohung_task/components/rounded_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/nohung_dish_info_controller.dart';

class NohungDishInfoView extends GetView<NohungDishInfoController> {
  const NohungDishInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(NohungDishInfoController());
    return Scaffold(
        backgroundColor: Vx.gray100,
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                FontAwesomeIcons.solidHeart,
                color: Vx.red400,
              ),
            )
          ],
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              FontAwesomeIcons.angleLeft,
              color: Vx.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Image.asset("assets/pic1.jpeg")),
            20.heightBox,
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  children: [
                    20.heightBox,
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 40, left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: "Spicy Chicken Ricemix"
                                        .text
                                        .bold
                                        .xl2
                                        .make()),
                                20.widthBox,
                                Row(
                                  children: [
                                    Icon(Icons.alarm, color: Vx.red400),
                                    "10-15 Mins".text.semiBold.make()
                                  ],
                                )
                              ],
                            ),
                            20.heightBox,
                            "Grilled meat showers,shish kebab and healthy to vegetable saled of fresh tomato cucmbe"
                                .text
                                .gray300
                                .make(),
                            25.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "Toping for You".text.xl.semiBold.make(),
                                "Clear".text.xl.red300.make(),
                              ],
                            ),
                            15.heightBox,
                            SizedBox(
                              height: 85,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: controller.toping.length,
                                  itemBuilder: ((context, index) {
                                    return Row(
                                      children: [
                                        NohungTopings(
                                          image: controller.toping[index]
                                              ["image"],
                                          action: controller.toping[index]
                                              ["action"],
                                        ),
                                        10.widthBox
                                      ],
                                    );
                                  })),
                            ),
                            30.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "Total Price".text.gray400.make(),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        "₹".text.bold.amber400.make(),
                                        "200.00".text.bold.xl3.make(),
                                      ],
                                    )
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () => Get.to(() => CartView()),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    child: Container(
                                      color: Vx.black,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.cartPlus,
                                              color: Vx.white,
                                              size: 15,
                                            ),
                                            10.widthBox,
                                            "Go To Cart"
                                                .text
                                                .semiBold
                                                .white
                                                .make()
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            30.heightBox
                            // NohungTopings()
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Vx.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedBox(
                        color: Vx.white,
                        radius: 20,
                        childPadding: 10,
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.solidStar,
                              size: 15,
                              color: Colors.amber,
                            ),
                            5.widthBox,
                            "5.0".text.xl.make()
                          ],
                        ),
                      ),
                      RoundedBox(
                        color: Colors.amber,
                        radius: 20,
                        childPadding: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            5.widthBox,
                            Icon(
                              FontAwesomeIcons.minus,
                              size: 15,
                            ),
                            5.widthBox,
                            "02".text.semiBold.xl.make(),
                            5.widthBox,
                            Icon(
                              FontAwesomeIcons.plus,
                              size: 15,
                            ),
                            5.widthBox
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
