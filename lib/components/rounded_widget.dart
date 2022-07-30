import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoundedBox extends StatelessWidget {
  final Widget child;
  final double childPadding;
  final double radius;
  final Color color;
  final double? height;
  final double? width;
  const RoundedBox(
      {Key? key,
      required this.child,
      this.childPadding = 5,
      this.radius = 12,
      this.color = Vx.gray300,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Vx.gray200,
            blurRadius: 2,
            // spreadRadius: 5,
            offset: Offset(3, 3),
          )
        ],
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: EdgeInsets.all(childPadding),
        child: child,
      ),
    );
  }
}
