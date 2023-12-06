import 'package:app_quiz/telaDerrota.dart';
import 'package:app_quiz/telaVitoria.dart';
import 'package:flutter/material.dart';

import 'main.dart';



class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> marcadorDeTentativas = [
    const Icon(Icons.favorite, color: Colors.red),
    const Icon(Icons.favorite, color: Colors.red),
    const Icon(Icons.favorite, color: Colors.red),
    const Icon(Icons.favorite, color: Colors.red),
    const Icon(Icons.favorite, color: Colors.red),
    const Icon(Icons.favorite, color: Colors.red),
    const Icon(Icons.favorite, color: Colors.red),
    const Icon(Icons.favorite, color: Colors.red),
    const Icon(Icons.favorite, color: Colors.red),
    const Icon(Icons.favorite, color: Colors.red),
  ];

  void resetarTentativas() {
    marcadorDeTentativas.clear();
    for (int i = 0; i < 10; i++) {
      marcadorDeTentativas.add(const Icon(Icons.favorite, color: Colors.red));
    }
  }

  void conferirResposta(String respostaSelecionada) {
    String respostaCerta = helper.obterResposta();
    setState(() {
      if (respostaSelecionada == respostaCerta) {
        if (helper.conferirFimDaExecucao()) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TelaVitoria()),
          );
          helper.reiniciarApp();
          resetarTentativas();
        } else {
          helper.proxPergunta();
        }
      } else {
        marcadorDeTentativas.removeAt(0);
      }
      if (helper.conferirTentativas(marcadorDeTentativas)) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TelaDerrota()),
        );
        helper.reiniciarApp();
        resetarTentativas();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
    
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: marcadorDeTentativas,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                helper.obterQuestao(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFFF2EA77),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Schyler"
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(300, 40),
                    backgroundColor: const Color(0xFF311C40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    helper.obterAlternativa(0),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    conferirResposta(helper.obterAlternativa(0));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(300, 40),
                    backgroundColor: const Color(0xFF311C40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    helper.obterAlternativa(1),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    conferirResposta(helper.obterAlternativa(1));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(300, 40),
                    backgroundColor: const Color(0xFF311C40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    helper.obterAlternativa(2),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    conferirResposta(helper.obterAlternativa(2));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(300, 40),
                    backgroundColor: const Color(0xFF311C40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    helper.obterAlternativa(3),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    conferirResposta(helper.obterAlternativa(3));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(300, 40),
                    backgroundColor: const Color(0xFF311C40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    helper.obterAlternativa(4),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    conferirResposta(helper.obterAlternativa(4));
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
