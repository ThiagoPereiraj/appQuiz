import 'package:app_quiz/perguntas.dart';

class Helper {
  int _numeroQuestaoAtual = 0;
  List<Perguntas> _bancoDePerguntas = [
    Perguntas(
        'O metrô é um dos meios de transporte mais seguros do mundo.', true),
    Perguntas('A culinária brasileira é uma das melhores do mundo.', true),
    Perguntas('Vacas podem voar, assim como peixes utilizam os pés para andar.',
        false),
    Perguntas('A maioria dos peixes podem viver fora da água.', false),
    Perguntas('A lâmpada foi inventada por um brasileiro.', false),
    Perguntas(
        'É possível utilizar a carteira de habilitação de carro para dirigir um avião.',
        false),
    Perguntas('O Brasil possui 26 estados e 1 Distrito Federal.', true),
    Perguntas(
        'Bitcoin é o nome dado a uma das moedas virtuais mais famosas.', true),
    Perguntas('1 minuto equivale a 60 segundos.', true),
    Perguntas('1 segundo equivale a 200 milissegundos.', false),
    Perguntas(
        'O Burj Khalifa, em Dubai, é considerado o maior prédio do mundo.',
        true),
    Perguntas('Ler após uma refeição prejudica a visão humana.', false),
    Perguntas(
        'O cartão de crédito pode ser considerado uma moeda virtual.', false),
  ];

  
  String obterQuestao() {
    return _bancoDePerguntas[_numeroQuestaoAtual].questao;
  }

  bool obterResposta() {
    return _bancoDePerguntas[_numeroQuestaoAtual].resposta;
  }

  void proxPergunta() {
    if (_numeroQuestaoAtual < _bancoDePerguntas.length - 1) {
      _numeroQuestaoAtual++;
    } else {}
  }

  bool conferirFimDaExecucao() {
    if (_numeroQuestaoAtual == _bancoDePerguntas.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  void reiniciarApp(){
    _numeroQuestaoAtual=0;
  }
  bool conferirTentativas(List tentativas){
    if (tentativas.length==0) {
      return true;
    } else {
      return false;
    }
  }
}
