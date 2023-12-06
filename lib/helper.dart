import 'package:app_quiz/perguntas.dart';

class Helper {
  int _numeroQuestaoAtual = 0;
  final List<Perguntas> _bancoDePerguntas = [
    Perguntas('Qual é o maior planeta do nosso sistema solar?', 'Júpiter',
        ['Mercúrio', 'Vênus', 'Terra', 'Júpiter', 'Saturno']),
    Perguntas('Quem pintou a "Mona Lisa"?', 'Leonardo da Vinci', [
      'Michelangelo',
      'Leonardo da Vinci',
      'Pablo Picasso',
      'Vincent van Gogh',
      'Claude Monet'
    ]),
    Perguntas('Qual é o país com a área territorial mais extensa do mundo?',
        'Rússia', ['Canadá', 'China', 'Estados Unidos', 'Rússia', 'Brasil']),
    Perguntas('Quem escreveu a peça "Romeu e Julieta"?', 'William Shakespeare', [
      'Charles Dickens',
      'Jane Austen',
      'William Shakespeare',
      'Mark Twain',
      'Herman Melville'
    ]),
    Perguntas('Qual é o elemento químico mais abundante no universo?','Hidrogênio', [
      'Oxigênio',
      'Ferro',
      'Hélio',
      'Carbono',
      'Hidrogênio'
      ]),
    Perguntas('Quem foi o primeiro ser humano a pisar na Lua?', 'Neil Armstrong', [
      'Buzz Aldrin',
      'Yuri Gagarin',
      'Neil Armstrong',
      'Alan Shepard',
      'John Glenn'
    ]),
    Perguntas('Qual é o rio mais longo do mundo?', 'Rio Nilo', [
      'Rio Amazonas',
      'Rio Nilo',
      'Rio Yangtze',
      'Rio Mississipi',
      'Rio Ganges'
    ]),
    Perguntas('Quem é o criador da teoria da relatividade?', 'Albert Einstein', [
      'Isaac Newton',
      'Galileu Galilei',
      'Marie Curie',
      'Albert Einstein',
      'Stephen Hawking'
    ]),
    Perguntas('Qual é o ponto mais alto do mundo?', 'Monte Everest', [
      'Monte Kilimanjaro',
      'Monte K2',
      'Monte Everest',
      'Monte McKinley',
      'Monte Elbrus'
    ]),
    Perguntas('Quem escreveu o livro "1984"?', 'George Orwell', [
      'Aldous Huxley',
      'George Orwell',
      'Ray Bradbury',
      'J.R.R. Tolkien',
      'F. Scott Fitzgerald'
    ]),
    Perguntas('Qual é o animal terrestre mais rápido do mundo?', 'Guepardo',[
      'Leão',
      'Elefante',
      'Tigre',
      'Guepardo',
      'Lobo'
      ]),
    Perguntas('Quem foi o primeiro presidente dos Estados Unidos?','George Washington', [
      'Thomas Jefferson',
      'Abraham Lincoln',
      'George Washington',
      'John F. Kennedy',
      'Franklin D. Roosevelt'
    ]),
    Perguntas('Qual é o maior oceano do mundo?', 'Oceano Pacífico', [
      'Oceano Índico',
      'Oceano Atlântico',
      'Oceano Pacífico',
      'Oceano Ártico',
      'Oceano Antártico'
    ]),
    Perguntas('Qual é o nome da constelação mais próxima da Terra?','Alpha Centauri',[
      'Andrômeda',
      'Orion',
      'Pégaso',
      'Alpha Centauri',
      'Centauro'
      ]),
    Perguntas('Quem é conhecido como o "pai da computação"?', 'Alan Turing', [
      'Bill Gates',
      'Steve Jobs',
      'Tim Berners-Lee',
      'Alan Turing',
      'Charles Babbage'
    ]),
    Perguntas('Qual é o metal líquido à temperatura ambiente?', 'Mercúrio',[
      'Ferro',
      'Chumbo',
      'Alumínio',
      'Mercúrio',
      'Ouro'
      ]),
    Perguntas('Qual é o único planeta do sistema solar que gira de leste a oeste?','Vênus',[
      'Mercúrio',
      'Vênus',
      'Marte',
      'Júpiter',
      'Urano'
      ]),
    Perguntas('Quem foi o primeiro imperador romano?', 'César Augusto',[
      'César Augusto',
      'Nero',
      'Calígula',
      'Júlio César',
      'Trajano'
      ]),
    Perguntas('Qual é o processo pelo qual as plantas produzem alimentos?','Fotossíntese',[
      'Respiração',
      'Fotossíntese',
      'Digestão',
      'Transpiração',
      'Absorção'
      ]),
    Perguntas('Qual é o compositor da famosa sinfonia "A Quinta de Beethoven"?','Ludwig van Beethoven',[
      'Wolfgang Amadeus Mozart',
      'Ludwig van Beethoven',
      'Johann Sebastian Bach',
      'Franz Schubert',
      'Pyotr Ilyich Tchaikovsky'
    ]),
  ];

  String obterQuestao() {
    return _bancoDePerguntas[_numeroQuestaoAtual].questao;
  }

  String obterAlternativa(int index) {
    return _bancoDePerguntas[_numeroQuestaoAtual].alternativas[index];
  }

  String obterResposta() {
    return _bancoDePerguntas[_numeroQuestaoAtual].resposta;
  }

  void proxPergunta() {
    if (_numeroQuestaoAtual < _bancoDePerguntas.length - 1) {
      _numeroQuestaoAtual++;
    }
  }

  bool conferirFimDaExecucao() {
    if (_numeroQuestaoAtual == _bancoDePerguntas.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reiniciarApp() {
    _numeroQuestaoAtual = 0;
  }

  bool conferirTentativas(List tentativas) {
    if (tentativas.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
