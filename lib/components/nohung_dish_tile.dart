import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nohung_task/components/rounded_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class NohungDishTile extends StatelessWidget {
  final String title, subTitle, price, heartType, image;
  final void Function()? onTap;
  const NohungDishTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.heartType,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 125,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                35.heightBox,
                Expanded(
                  child: RoundedBox(
                    color: Vx.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              50.heightBox,
                              title.text.semiBold.make(),
                              2.heightBox,
                              subTitle.text.xs.gray400.make(),
                              20.heightBox,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  price.text.semiBold.make(),
                                  heartType == 'solid'
                                      ? Icon(
                                          FontAwesomeIcons.solidHeart,
                                          color: Vx.red500,
                                          size: 15,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.heart,
                                          size: 15,
                                        )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CircleAvatar(
              maxRadius: 45,
              backgroundImage: AssetImage(image),
            )
          ],
        ),
      ),
    );
  }
}
