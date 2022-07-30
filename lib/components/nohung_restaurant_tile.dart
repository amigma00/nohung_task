import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import 'rounded_widget.dart';

class NohungRestauranTile extends StatelessWidget {
  final String image, title, subTitle;
  final double rating;
  const NohungRestauranTile(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
        childPadding: 10,
        color: Vx.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(image),
            ),
            10.widthBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title.text.semiBold.sm.gray500.make(),
                5.heightBox,
                RatingBar.builder(
                  ignoreGestures: true,
                  unratedColor: Vx.amber100,
                  itemSize: 15,
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                5.heightBox,
                subTitle.text.xs.gray300.make(),
              ],
            )
          ],
        ));
  }
}
