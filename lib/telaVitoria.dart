import 'package:flutter/material.dart';

import 'homeApp.dart';

class TelaVitoria extends StatelessWidget {
  const TelaVitoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF4A2D65),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 70, 8, 8),
                child: Text(
                  'Parabéns!\nVocê Ganhou!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF2C438),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Image.asset(
                'assets/vitoria.png',
                width: 150.0,
                height: 150.0,
              ),
              const SizedBox(height: 90),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF311C40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeApp()),
                    );
                  },
                  child: const Text(
                    'Voltar ao início',
                    style: TextStyle(fontSize: 18), // Tamanho do texto do botão
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
