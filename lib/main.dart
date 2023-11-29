import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'helper.dart';

Helper helper = Helper();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuizApp()),
            );
          },
          child: Text('iniciar !'),
        ),
      ),
    );
  }
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> marcadorDeTentativas = [
    Icon(Icons.favorite, color: Colors.red),
    Icon(Icons.favorite, color: Colors.red),
    Icon(Icons.favorite, color: Colors.red),
    Icon(Icons.favorite, color: Colors.red),
    Icon(Icons.favorite, color: Colors.red)
  ];

  void resetarTentativas() {
    marcadorDeTentativas.clear();
    for (int i = 0; i < 5; i++) {
      marcadorDeTentativas.add(Icon(Icons.favorite, color: Colors.red));
    }
  }

  void conferirResposta(bool respostaSelecionada) {
    bool respostaCerta = helper.obterResposta();
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
          MaterialPageRoute(builder: (context) => TelaDerrota()),
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
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                helper.obterQuestao(),
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
                backgroundColor: Color.fromARGB(255, 47, 130, 207),
              ),
              child: const Text(
                'Verdadeiro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                conferirResposta(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 47, 130, 207),
              ),
              child: const Text(
                'Falso',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                conferirResposta(false);
              },
            ),
          ),
        ),
        Row(
          children: marcadorDeTentativas,
        ),
      ],
    );
  }
}

class TelaDerrota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
         Expanded(
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
                backgroundColor: Color.fromARGB(255, 47, 130, 207),
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
                backgroundColor: Color.fromARGB(255, 47, 130, 207),
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
                  MaterialPageRoute(builder: (context) => HomeApp()),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vitória"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            
             Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeApp()),
                );
          },
          child: Text('Retornar !'),
        ),
      ),
    );
  }
}

/*
pergunta1: 'O metrô é um dos meios de transporte mais seguros do mundo', verdadeiro,
pergunta2: 'A culinária brasileira é uma das melhores do mundo.', verdadeiro,
pergunta3: 'Vacas podem voar, assim como peixes utilizam os pés para andar.', falso,
*/
