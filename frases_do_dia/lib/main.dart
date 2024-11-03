import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frase_gerada = "Clique abaixo para gerar uma frase!";
  var _frase = [
    "Acredite em você e tudo será possível.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Não importa quão devagar você vá, desde que não pare.",
    "Desafios são o que tornam a vida interessante; superá-los é o que a torna significativa.",
    "O único modo de fazer um excelente trabalho é amar o que você faz.",
    "A persistência é o caminho do êxito.",
    "Você é capaz de coisas incríveis.",
    "Sonhe grande e ouse falhar.",
    "A única limitação é você mesmo.",
    "Viva a vida como se tudo fosse uma bênção."
  ];

  void _gerarFrase() {
    var _numeroSorteado = Random().nextInt(_frase.length);
    setState(() {
      _frase_gerada = _frase[_numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/logo.png"),
            ),
            Text(_frase_gerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: _gerarFrase,
              child: Text("Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.lightBlue,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            textAlign: TextAlign.center,
            "Desenvolvido por: Jorge Luis",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
