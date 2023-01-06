import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntasSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Lilás', 'Marron', 'Verde', 'Amarelo']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ["Gato", "Leão", 'Cachorro', "Papagaio"]
    },
    {
      'texto': "Qual é o seu time favorito?",
      "respostas": ['Real Madrid', 'Cruzeiro', 'Borussia Dortimund', "Milan"]
    },
    {
      'texto': "Qual é o seu melhor amigo?",
      'respostas': ['Gerson', 'Fábio', 'Alessando', 'Jeremias']
    },
    {
      'texto': "Qual é a sua melhor amiga?",
      'respostas': ['Nilza', 'Elizabeth', 'Girlene', 'Leila']
    },
    {
      'texto': "Qual esporte favorito?",
      'respostas': ['Volei', "Handebol", 'Basquete', 'Futebol']
    },
    {
      'texto': "Qual a sua primeira liguagem programação?",
      'respostas': ["Javascript", "Python", "C#", 'Dart']
    },
    {
      'texto': "Qual é o seu melhor instrutor",
      'respostas': [
        "Leonardo Leitão",
        "Danilo Aparecido",
        "Daniel Tapias Morales",
        'Glauco Daniel e João Rangel'
      ]
    }
  ];

  void _quandoResponder() {
    if (temperguntasSelecionada) {
      setState(() {
        _perguntasSelecionada++;
      });
    }
  }

  bool get temperguntasSelecionada {
    return _perguntasSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: temperguntasSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntasSelecionada: _perguntasSelecionada,
                  quandoResponder: _quandoResponder)
              : const Resultado('Parabéns')),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
