class Perguntas {
  late String questao;
  late String resposta;
  List<String> alternativas = [];

  Perguntas(String questao, String resposta, List<String> alternativas) {
    this.questao = questao;
    this.resposta = resposta;
    this.alternativas = alternativas;
  }
}
