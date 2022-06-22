import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  final Function() onPressed;

  const CustomButton(
      {super.key,
      this.height,
      this.width,
      required this.child,
      required this.onPressed});

  factory CustomButton.icon(
      {double? height,
      double? width,
      required Widget icon,
      required Widget label,
      required Function() onPressed}) = CusttomButtonIcon;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        child: SizedBox(
            height: 50,
            width: 140,
            child: ElevatedButton(onPressed: onPressed, child: child)));
  }
}

class CusttomButtonIcon extends CustomButton {
  CusttomButtonIcon({
    super.key,
    super.height,
    super.width,
    required Widget icon,
    required Widget label,
    required super.onPressed,
  }) : super(child: ChildCustomButtonIcon(icon: icon, label: label));
}

class ChildCustomButtonIcon extends StatelessWidget {
  final Widget icon;
  final Widget label;

  const ChildCustomButtonIcon({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [icon, const SizedBox(width: 10), Flexible(child: label)]);
  }
}
