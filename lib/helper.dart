import 'package:app_quiz/perguntas.dart';

class Helper {
  int _numeroQuestaoAtual = 0;
  final List<Perguntas> _bancoDePerguntas = [
    Perguntas('Qual é o maior planeta do nosso sistema solar?', 'Júpiter',[
      'Mercúrio', 
      'Vênus', 
      'Terra', 
      'Júpiter', 
      'Saturno'
      ]),
    Perguntas('Quem pintou a "Mona Lisa"?', 'Leonardo da Vinci', [
      'Michelangelo',
      'Leonardo da Vinci',
      'Pablo Picasso',
      'Vincent van Gogh',
      'Claude Monet'
    ]),
    Perguntas('Qual é o país com a área territorial mais extensa do mundo?','Rússia', [
      'Canadá', 
      'China', 
      'Estados Unidos', 
      'Rússia', 
      'Brasil'
      ]),
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
    Perguntas('Qual é o compositor da famosa sinfonia "A Quinta de Beethoven"?','Ludwig van Beethoven', [
      'Wolfgang Amadeus Mozart',
      'Ludwig van Beethoven',
      'Johann Sebastian Bach',
      'Franz Schubert',
      'Pyotr Ilyich Tchaikovsky'
    ]),
    Perguntas('Quem foi o líder político sul-africano vencedor do Prêmio Nobel da Paz em 1993?','Nelson Mandela', [
      'Desmond Tutu',
      'F.W. de Klerk',
      'Nelson Mandela',
      'Oliver Tambo',
      'Thabo Mbeki'
    ]),
    Perguntas('Qual é o maior animal terrestre do mundo?', 'Elefante africano', [
      'Baleia-azul',
      'Elefante africano',
      'Girafa',
      'Rinoceronte-branco',
      'Hipopótamo'
    ]),
    Perguntas('Quem pintou a obra “A Noite Estrelada”?', 'Vincent van Gogh', [
      'Pablo Picasso',
      'Claude Monet',
      'Vincent van Gogh',
      'Salvador Dalí',
      'Leonardo da Vinci'
    ]),
    Perguntas('Qual é a capital do Canadá?', 'Ottawa',[
      'Toronto', 
      'Vancouver', 
      'Ottawa', 
      'Montreal', 
      'Calgary'
      ]),
    Perguntas('Quem é o autor da série de livros “As Crônicas de Gelo e Fogo”?','George R. R. Martin', [
      'J. K. Rowling',
      'J. R. R. Tolkien',
      'George R. R. Martin',
      'Stephen King',
      'C. S. Lewis'
    ]),
    Perguntas('Qual é o símbolo químico do ouro?', 'Au',[
      'Ag', 
      'Fe', 
      'Cu', 
      'Au', 
      'Pb'
      ]),
    Perguntas('Qual é a maior cordilheira do mundo?', 'Cordilheira dos Andes', [
      'Cordilheira do Himalaia',
      'Cordilheira dos Andes',
      'Cordilheira dos Apalaches',
      'Cordilheira dos Alpes',
      'Cordilheira da Sibéria'
    ]),
    Perguntas('Quem foi o primeiro astronauta a viajar para o espaço?','Yuri Gagarin', [
      'Neil Armstrong',
      'Yuri Gagarin',
      'Buzz Aldrin',
      'Alan Shepard',
      'John Glenn'
    ]),
    Perguntas('Qual é o nome do criador do Facebook?', 'Mark Zuckerberg', [
      'Jeff Bezos',
      'Elon Musk',
      'Bill Gates',
      'Mark Zuckerberg',
      'Tim Cook'
    ]),
    Perguntas('Quem é o autor de “O Pequeno Príncipe”?', 'Antoine de Saint-Exupéry', [
      'Victor Hugo',
      'Antoine de Saint-Exupéry',
      'Gustave Flaubert',
      'Marcel Proust',
      'Émile Zola'
    ]),
    Perguntas('Qual é o país com a maior população do mundo?', 'China',[
      'Índia', 
      'Estados Unidos', 
      'China', 
      'Rússia', 
      'Brasil'
      ]),
    Perguntas('Quem foi o cientista que formulou a teoria da evolução das espécies?','Charles Darwin', [
      'Isaac Newton',
      'Galileu Galilei',
      'Albert Einstein',
      'Charles Darwin',
      'Stephen Hawking'
    ]),
    Perguntas('Qual é o elemento mais abundante na crosta terrestre?','Oxigênio', [
      'Hidrogênio', 
      'Oxigênio', 
      'Ferro', 
      'Silício', 
      'Alumínio'
      ]),
    Perguntas('Quem foi o primeiro homem a criar a lâmpada elétrica viável?','Thomas Edison', [
      'Nikola Tesla',
      'Alexander Graham Bell',
      'Thomas Edison',
      'Benjamin Franklin',
      'James Watt'
    ]),
    Perguntas('Qual é o maior deserto do mundo?', 'Deserto do Saara', [
      'Deserto de Gobi',
      'Deserto do Atacama',
      'Deserto de Kalahari',
      'Deserto do Saara',
      'Deserto da Arábia'
    ]),
    Perguntas('Quem foi o pintor italiano conhecido por pintar o teto da Capela Sistina?','Michelangelo', [
      'Leonardo da Vinci',
      'Rafael Sanzio',
      'Michelangelo',
      'Sandro Botticelli',
      'Caravaggio'
    ]),
    Perguntas('Qual é o nome dado à linha imaginária que divide a Terra em Hemisfério Oriental e Ocidental?','Meridiano de Greenwich', [
      'Equador',
      'Trópico de Câncer',
      'Trópico de Capricórnio',
      'Meridiano de Greenwich',
      'Linha Internacional de Data'
    ]),
    Perguntas('Quem escreveu a obra “Odisseia”?', 'Homero',[
      'Platão', 
      'Sófocles', 
      'Virgílio',
      'Homero', 
      'Aristóteles'
      ]),
    Perguntas('Qual é o maior órgão do corpo humano?', 'Pele',[
      'Coração', 
      'Fígado', 
      'Pele', 
      'Pulmões', 
      'Intestino'
      ]),
    Perguntas('Quem foi o primeiro homem a pisar no espaço?', 'Yuri Gagarin', [
      'Neil Armstrong',
      'Buzz Aldrin',
      'Alan Shepard',
      'Yuri Gagarin',
      'John Glenn'
    ]),
    Perguntas('Qual é o maior mamífero marinho?', 'Baleia-azul',[
      'Orca', 
      'Tubarão-baleia', 
      'Baleia-azul', 
      'Golfinho', 
      'Leão-marinho'
      ]),
    Perguntas('Quem foi o primeiro homem a pintar a Mona Lisa?','Leonardo da Vinci', [
      'Leonardo da Vinci',
      'Pablo Picasso',
      'Michelangelo',
      'Vincent van Gogh',
      'Claude Monet'
    ]),
    Perguntas('Qual é a cidade mais populosa do mundo?', 'Tóquio',[
      'Delhi', 
      'Xangai', 
      'Tóquio', 
      'Mumbai', 
      'São Paulo'
      ]),
    Perguntas('Quem foi o presidente dos Estados Unidos durante a Segunda Guerra Mundial?','Franklin D. Roosevelt', [
      'Theodore Roosevelt',
      'Franklin D. Roosevelt',
      'Woodrow Wilson',
      'Harry S. Truman',
      'Dwight D. Eisenhower'
    ]),
    Perguntas('Qual é o nome do maior osso do corpo humano?', 'Fêmur',[
      'Tíbia', 
      'Fíbula', 
      'Fêmur', 
      'Úmero', 
      'Rádio'
      ]),
    Perguntas('Quem é considerado o “pai da psicanálise”?', 'Sigmund Freud', [
      'Carl Jung',
      'Ivan Pavlov',
      'Sigmund Freud',
      'Erik Erikson',
      'Alfred Adler'
    ]),
    Perguntas('Qual é o maior satélite natural do planeta Terra?', 'Lua',[
      'Lua', 
      'Ganimedes', 
      'Titã', 
      'Europa', 
      'Io'
      ]),
    Perguntas('Quem foi o fundador da Microsoft?', 'Bill Gates', [
      'Steve Jobs',
      'Mark Zuckerberg',
      'Jeff Bezos',
      'Bill Gates',
      'Larry Page'
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
