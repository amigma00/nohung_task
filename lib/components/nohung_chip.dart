import 'package:flutter/material.dart';

class NohungChip extends StatelessWidget {
  final Widget label;
  final String image;
  final Color color;
  const NohungChip(
      {Key? key, required this.image, required this.label, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: color,
        label: label,
        avatar: CircleAvatar(
          backgroundImage: AssetImage(image),
        ));
  }
}
