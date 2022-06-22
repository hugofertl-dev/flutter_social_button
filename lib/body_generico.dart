import 'package:flutter/material.dart';

abstract class BodyGenerico extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget icon;
  final Widget label;
  final Function() onPressed;

  const BodyGenerico(
      {super.key,
      this.height,
      this.width,
      required this.icon,
      required this.label,
      required this.onPressed});

  Widget body();

  @override
  Widget build(BuildContext context) {
    return body();
  }
}
