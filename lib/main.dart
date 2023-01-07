import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Lilás', 'pontuacao': 10},
        {'texto': 'Amarelo', 'pontuacao': 9},
        {'texto': 'Verde', 'pontuacao': 7},
        {'texto': 'Marron', 'pontuacao': 5},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': "Gato", 'pontuacao': 7},
        {'texto': "Leão", 'pontuacao': 9},
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': "Papagaio", 'pontuacao': 5},
      ]
    },
    {
      'texto': "Qual é a sua comida Favorita",
      'respostas': [
        {'texto': "Tropeiro", 'pontuacao': 9},
        {'texto': "Arroz temperado", 'pontuacao': 7},
        {'texto': "Fricassê", 'pontuacao': 10},
        {'texto': 'Estrogonoff', 'pontuacao': 5},
      ]
    },
    {
      'texto': "Qual é a sua sobremesa Favorita",
      'respostas': [
        {'texto': "Pudim", 'pontuacao': 9},
        {'texto': "Sorvete", 'pontuacao': 7},
        {'texto': 'Iorgute', 'pontuacao': 5},
        {'texto': "Pavê", 'pontuacao': 10},
      ]
    },
    {
      'texto': "Qual é o seu time favorito?",
      "respostas": [
        {'texto': 'Real Madrid', 'pontuacao': 9},
        {'texto': 'Cruzeiro', 'pontuacao': 10},
        {'texto': 'Borussia Dortimund', 'pontuacao': 7},
        {'texto': "Milan", 'pontuacao': 5},
      ]
    },
    {
      'texto': "Qual é o seu melhor amigo?",
      'respostas': [
        {'texto': 'Gerson', 'pontuacao': 10},
        {'texto': 'Fábio', 'pontuacao': 9},
        {'texto': 'Alessando', 'pontuacao': 7},
        {'texto': 'Jeremias', 'pontuacao': 5},
      ]
    },
    {
      'texto': "Qual é a sua melhor amiga?",
      'respostas': [
        {'texto': 'Nilza', 'pontuacao': 7},
        {'texto': 'Elizabeth', 'pontuacao': 10},
        {'texto': 'Girlene', 'pontuacao': 9},
        {'texto': 'Leila', 'pontuacao': 5},
      ]
    },
    {
      'texto': "Qual esporte favorito?",
      'respostas': [
        {'texto': 'Volei', 'pontuacao': 5},
        {'texto': "Handebol", 'pontuacao': 9},
        {'texto': 'Basquete', 'pontuacao': 7},
        {'texto': 'Futebol', 'pontuacao': 10},
      ]
    },
    {
      'texto': "Qual a sua primeira liguagem programação?",
      'respostas': [
        {'texto': "Javascript", 'pontuacao': 9},
        {'texto': "Python", 'pontuacao': 7},
        {'texto': "C#", 'pontuacao': 10},
        {'texto': 'Dart', 'pontuacao': 5},
      ]
    },
    {
      'texto': "Qual é o seu melhor instrutor",
      'respostas': [
        {'texto': "Leonardo Leitão", 'pontuacao': 9},
        {'texto': "Danilo Aparecido", 'pontuacao': 10},
        {'texto': "Daniel Tapias Morales", 'pontuacao': 7},
        {'texto': 'Glauco Daniel e João Rangel', 'pontuacao': 5},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temperguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  bool get temperguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: temperguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _responder)
              
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
