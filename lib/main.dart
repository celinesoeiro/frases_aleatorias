import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases aleatórias',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: "Frases aleatórias"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List _frases = [
    'Você só vencerá amanhã se não desistir hoje',
    'Felicidade é quando o que você pensa, o que você diz e o que você faz estão em harmonia. - Gandhi',
    'O que somos é consequência do que pensamos',
    'Força não vem de capacidade física. Vem de uma vontade indomável - Gandhi',
    'Quando se navega sem destino, nenhum vento é favorável. - Sêneca',
    'Viver significa lutar. - Sêneca',
    'Perguntas-me qual foi o meu progresso? Comecei a ser amigo de mim mesmo. - Sêneca',
    'Lamentar uma dor passada, no presente, é criar outra dor e sofrer novamente. - Shakespeare',
    'Erros são sempre perdoáveis se você tiver a coragem de admiti-los. - Bruce Lee',
    'O saber se aprende com os mestres. A sabedoria, só com o corriqueiro da vida. - Cora Coralina',
  ];

  void _incrementCounter() {
    setState(() {
      _counter = Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Clique no botão para gerar uma nova frase:',
            ),
            Text(''),
            Text(
              _frases[_counter],
              style: Theme.of(context).textTheme.subtitle,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
