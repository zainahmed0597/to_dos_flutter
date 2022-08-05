import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final icon;
  final color;
  final iconcolor;
  const IconButtonWidget({
    Key? key,
    required this.icon,
    required this.color,
    required this.iconcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          icon,
          color: iconcolor,
        ),
      ),
    );
  }
}
