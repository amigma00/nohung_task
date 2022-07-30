import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:nohung_task/components/nohung_cart_list_item.dart';
import 'package:nohung_task/components/rounded_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(FontAwesomeIcons.trashCan, color: Vx.black),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    "My".text.bold.xl4.make(),
                    "Cart List".text.xl4.make(),
                    25.heightBox,
                    Expanded(
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [NohungCartListItem(), 10.heightBox],
                            );
                          })),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.percent,
                      color: Vx.red400,
                    ),
                    10.widthBox,
                    "Do you have any discount code?".text.bold.make()
                  ],
                ),
                15.heightBox,
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
                              "Subtotal".text.bold.gray400.make(),
                              "₹100.00".text.bold.gray400.make(),
                            ],
                          ),
                          15.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              "Est.Tax".text.bold.gray400.make(),
                              "₹5.00".text.bold.gray400.make(),
                            ],
                          ),
                          15.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              "Delivery".text.bold.gray400.make(),
                              "Free".text.bold.gray400.make(),
                            ],
                          ),
                          15.heightBox,
                          DottedLine(
                            dashColor: Vx.gray400,
                            dashGapLength: 8,
                            dashLength: 5,
                            dashRadius: 10,
                            lineThickness: 3,
                          ),
                          15.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              "Total".text.bold.xl2.make(),
                              "₹105.00".text.bold.xl2.make(),
                            ],
                          ),
                          20.heightBox,
                          RoundedBox(
                              childPadding: 15,
                              color: Vx.amber400,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(FontAwesomeIcons.arrowRight,
                                        color: Vx.amber400),
                                    50.widthBox,
                                    "Checkout".text.xl.bold.make(),
                                    50.widthBox,
                                    Icon(
                                      FontAwesomeIcons.arrowRight,
                                      color: Vx.black,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              )),
                          30.heightBox
                        ],
                      )),
                  decoration: BoxDecoration(
                      color: Vx.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                ),
              ],
            ),
          ],
        ));
  }
}
