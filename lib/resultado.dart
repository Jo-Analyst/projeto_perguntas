import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final Function() reiniciarQuestionario;
  const Resultado(this.pontuacao, this.reiniciarQuestionario, {super.key});

  String get fraseResultado {
    if (pontuacao < 60) {
      return "Parabêns!";
    } else if (pontuacao < 80) {
      return "Você é bom!";
    } else if (pontuacao < 90) {
      return "Impressionante!";
    } else {
      return "Nível jedi!!!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: reiniciarQuestionario,
            child: const Text(
              'Reiniciar??',
              style: TextStyle(fontSize: 14),
            )),
      ],
    );
  }
}
