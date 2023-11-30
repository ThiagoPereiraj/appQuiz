import 'package:flutter/material.dart';
import 'helper.dart';

Helper helper = Helper();
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const QuizApp()),
            );
          },
          child: const Text('iniciar !'),
        ),
      ),
    );
  }
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

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
    const Icon(Icons.favorite, color: Colors.red)
  ];

  void resetarTentativas() {
    marcadorDeTentativas.clear();
    for (int i = 0; i < 5; i++) {
      marcadorDeTentativas.add(const Icon(Icons.favorite, color: Colors.red));
    }
  }

  void conferirResposta(String respostaSelecionada) {
    String respostaCerta = helper.obterResposta();
    setState(() {
      if (helper.conferirFimDaExecucao()) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelaVitoria()),
        );
        helper.reiniciarApp();
        resetarTentativas();
      }
      if (respostaSelecionada == respostaCerta) {
        helper.proxPergunta();
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
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(400, 20),
                    backgroundColor: const Color.fromARGB(255, 47, 130, 207),
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
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(400, 20),
                    backgroundColor: const Color.fromARGB(255, 47, 130, 207),
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
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(400, 20),
                    backgroundColor: const Color.fromARGB(255, 47, 130, 207),
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
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(400, 20),
                    backgroundColor: const Color.fromARGB(255, 47, 130, 207),
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
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(400, 20),
                    backgroundColor: const Color.fromARGB(255, 47, 130, 207),
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

class TelaDerrota extends StatelessWidget {
  const TelaDerrota({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Você Perdeu!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 47, 130, 207),
              ),
              child: const Text(
                'Tentar novamente',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 47, 130, 207),
              ),
              child: const Text(
                'Voltar a Página inicial',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeApp()),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class TelaVitoria extends StatelessWidget {
  const TelaVitoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vitória"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeApp()),
            );
          },
          child: const Text('Retornar !'),
        ),
      ),
    );
  }
}
