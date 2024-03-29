import 'package:flutter/material.dart';
import 'dart:math';

int escolherNumero() {
  return Random().nextInt(5) + 1;
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dadoos',
              style: TextStyle(color: Colors.white),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  var n1 = escolherNumero();
  var n2 = escolherNumero();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    n1 = escolherNumero();
                  });
                },
                child: Image.asset('imagens/dado$n1.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    n2 = escolherNumero();
                  });
                },
                child: Image.asset('imagens/dado$n2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
