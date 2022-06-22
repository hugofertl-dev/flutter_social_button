import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practico_1/body_generico.dart';
import 'package:flutter_practico_1/custom_button.dart';

class CustomButtonSocial extends BodyGenerico {
  const CustomButtonSocial({
    super.key,
    super.height,
    super.width,
    required super.icon,
    required super.label,
    required super.onPressed,
  });

  @override
  Widget body() {
    return CustomButton.icon(
      height: height,
      width: width,
      icon: icon,
      label: label,
      onPressed: onPressed,
    );
  }

  const factory CustomButtonSocial.google(
      {double? height,
      double? width,
      TextStyle? style,
      required Function() onPressed}) = GoogleButton;
}

class GoogleButton extends CustomButtonSocial {
  const GoogleButton(
      {super.key,
      super.height,
      super.width,
      required super.onPressed,
      TextStyle? style})
      : super(
            icon: const Icon(FontAwesomeIcons.google),
            label: const CustomChildButtonSocial(
              texto: 'Google',
            ));
}

class CustomChildButtonSocial extends StatelessWidget {
  final String texto;
  final TextStyle? style;

  const CustomChildButtonSocial(
      {super.key,
      required this.texto,
      this.style = const TextStyle(fontSize: 16, color: Colors.white)});

  @override
  Widget build(BuildContext context) {
    return Text(texto, style: style);
  }
}
