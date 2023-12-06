import 'package:flutter/material.dart';

import 'homeApp.dart';

class TelaDerrota extends StatelessWidget {
  const TelaDerrota({super.key});

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
                  'Você Perdeu!!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFD5B00),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Image.asset(
                'assets/fracassado.png',
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
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Tentar novamente',
                    style: TextStyle(fontSize: 18), // Tamanho do texto do botão
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
