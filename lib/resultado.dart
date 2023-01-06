import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String frase;
  const Resultado(this.frase, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Parabéns",
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
