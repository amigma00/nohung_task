import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'rounded_widget.dart';

class NohungCartListItem extends StatelessWidget {
  const NohungCartListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Row(
            children: [
              Image.asset(
                "assets/pic1.jpeg",
                height: 100,
                width: 100,
              ),
              10.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Grilled skewrs".text.xl.bold.make(),
                  20.heightBox,
                  Row(
                    children: [
                      "₹200".text.xl.bold.make(),
                      "  x2".text.xl.gray400.bold.make(),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        RoundedBox(
            childPadding: 0,
            color: Vx.black,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Vx.gray700,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.add,
                        color: Vx.white,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.remove,
                    color: Vx.gray300,
                  ),
                )
              ],
            ))
      ],
    );
  }
}
