import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nohung_task/components/rounded_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class NohungNavBar extends StatelessWidget {
  const NohungNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RoundedBox(
          radius: 18,
          childPadding: 0,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.square,
                      color: Colors.amber,
                    ),
                    15.heightBox,
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      child: Container(
                        color: Colors.amber,
                        height: 2.5,
                        width: 27,
                        child: Container(),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.user,
                      color: Colors.amber,
                    ),
                    21.5.heightBox
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.amber,
                    ),
                    21.5.heightBox
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.bagShopping,
                      color: Colors.amber,
                    ),
                    21.5.heightBox
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
