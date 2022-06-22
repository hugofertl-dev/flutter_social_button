import 'package:flutter/material.dart';

class Persona {
  final String nombre;
  final int edad;
  // final int key;

  Persona({required this.nombre, required this.edad});
}

class Juan extends Persona {
  Juan({required String nombreJuan, required int edadJuan})
      : super(nombre: nombreJuan, edad: edadJuan);

  // Juan({required super.nombre, required super.edad});
}
