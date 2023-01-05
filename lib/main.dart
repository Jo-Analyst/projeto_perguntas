import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Lilás', 'Marron', 'Verde', 'Amarelo']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Cachorro', "Gato", "Leão", "Papagaio"]
    },
    {
      'texto': "Qual é o seu time favorito?",
      "respostas": ['Cruzeiro', 'Real Madrid', 'Borussia Dortimund', "Milan"]
    },
    {
      'texto': "Qual é o seu melhor amigo?",
      'respostas': ['Gerson', 'Fábio', 'Alessando', 'Jeremias']
    },
    {
      'texto': "Qual é a sua melhor amiga?",
      'respostas': ['Elizabeth', 'Girlene', 'Nilza', 'Leila']
    },
    {
      'texto': "Qual esporte favorito?",
      'respostas': ['Futebol', 'Volei', "Handebol", 'Basquete']
    },
    {
      'texto': "Qual a sua primeira liguagem programação?",
      'respostas': ["C#", "Javascript", "Python", 'Dart']
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

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas'] as List<String>
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto'] as String),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : null,
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
