import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntasSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Lilás', 'nota': 10},
        {'texto': 'Amarelo', 'nota': 9},
        {'texto': 'Verde', 'nota': 8},
        {'texto': 'Marron', 'nota': 7},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': "Gato", 'nota': 8},
        {'texto': "Leão", 'nota': 9},
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': "Papagaio", 'nota': 7},
      ]
    },
    {
      'texto': "Qual é o seu time favorito?",
      "respostas": [
        {'texto': 'Real Madrid', 'nota': 9},
        {'texto': 'Cruzeiro', 'nota': 10},
        {'texto': 'Borussia Dortimund', 'nota': 8},
        {'texto': "Milan", 'nota': 7},
      ]
    },
    {
      'texto': "Qual é o seu melhor amigo?",
      'respostas': [
        {'texto': 'Gerson', 'nota': 10},
        {'texto': 'Fábio', 'nota': 9},
        {'texto': 'Alessando', 'nota': 8},
        {'texto': 'Jeremias', 'nota': 7},
      ]
    },
    {
      'texto': "Qual é a sua melhor amiga?",
      'respostas': [
        {'texto': 'Nilza', 'nota': 6},
        {'texto': 'Elizabeth', 'nota': 10},
        {'texto': 'Girlene', 'nota': 9},
        {'texto': 'Leila', 'nota': 5},
      ]
    },
    {
      'texto': "Qual esporte favorito?",
      'respostas': [
        {'texto': 'Volei', 'nota': 7},
        {'texto': "Handebol", 'nota': 9},
        {'texto': 'Basquete', 'nota': 8},
        {'texto': 'Futebol', 'nota': 10},
      ]
    },
    {
      'texto': "Qual a sua primeira liguagem programação?",
      'respostas': [
        {'texto': "Javascript", 'nota': 9},
        {'texto': "Python", 'nota': 8},
        {'texto': "C#", 'nota': 10},
        {'texto': 'Dart', 'nota': 7},
      ]
    },
    {
      'texto': "Qual é o seu melhor instrutor",
      'respostas': [
        {'texto': "Leonardo Leitão", 'nota': 9},
        {'texto': "Danilo Aparecido", 'nota': 10},
        {'texto': "Daniel Tapias Morales", 'nota': 8},
        {'texto': 'Glauco Daniel e João Rangel', 'nota': 6},
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
