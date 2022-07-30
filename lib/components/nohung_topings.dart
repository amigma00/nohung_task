import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'rounded_widget.dart';

class NohungTopings extends StatelessWidget {
  final String action, image;
  const NohungTopings({
    Key? key,
    required this.action,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 10),
          child: RoundedBox(
            childPadding: 0,
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        action == 'add'
            ? RoundedBox(
                radius: 20,
                color: Vx.black,
                childPadding: 3,
                child: Icon(
                  Icons.add,
                  color: Vx.gray300,
                  size: 20,
                ),
              )
            : action == "remove"
                ? RoundedBox(
                    radius: 20,
                    color: Vx.amber200,
                    childPadding: 3,
                    child: Icon(
                      Icons.remove,
                      color: Vx.black,
                      size: 20,
                    ),
                  )
                : "".text.make()
      ],
    );
  }
}
