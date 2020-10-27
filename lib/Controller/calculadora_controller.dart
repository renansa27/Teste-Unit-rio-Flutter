import 'package:mobx/mobx.dart';
part 'calculadora_controller.g.dart';

class CalculadoraController = _CalculadoraControllerBase
    with _$CalculadoraController;

abstract class _CalculadoraControllerBase with Store {
  @observable
  int primeiroNumero = 0;

  @observable
  int segundoNumero = 0;

  @observable
  String operacaoEscolhida = "";

  @observable
  double resultado;

  @action
  void setPrimeiroNumero(int primeiroNumero) {
    this.primeiroNumero = primeiroNumero;
  }

  @action
  void setSegundoNumero(int segundoNumero) {
    this.segundoNumero = segundoNumero;
  }

  @action
  void setOperacaoEscolhida(String operacaoEscolhida) {
    this.operacaoEscolhida = operacaoEscolhida;
  }

  @action
  void setResultado() {
    if (operacaoEscolhida == '+') {
      resultado = (primeiroNumero + segundoNumero).toDouble();
    } else if (operacaoEscolhida == '-') {
      resultado = (primeiroNumero - segundoNumero).toDouble();
    } else if (operacaoEscolhida == '*') {
      resultado = (primeiroNumero * segundoNumero).toDouble();
    } else if (operacaoEscolhida == '/') {
      resultado = (primeiroNumero / segundoNumero).toDouble();
    } else if (operacaoEscolhida == '%') {
      resultado = (primeiroNumero % segundoNumero).toDouble();
    }
  }
}
