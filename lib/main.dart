import 'package:calculadora_flutter_dell/Controller/calculadora_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() => runApp(Calculadora());

class Calculadora extends StatelessWidget {
  final CalculadoraController calculadoraController = CalculadoraController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Observer(
              builder: (_) => Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: <Widget>[
                    Numeros(onPrimeiroNumeroEscolhido),
                    Divider(),
                    Operacoes(onOperacaoEscolhida),
                    Divider(),
                    Numeros(onSegundoNumeroEscolhido),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        BotaoCalcular(
                            todasOpcoesForamEscolhidas() ? onClickBotao : null),
                        BotaoZerar(onClickBotaoZerar)
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Text(
                          'Operação: ',
                          style: TextStyle(fontSize: 28),
                        ),
                        calculadoraController.primeiroNumero != null
                            ? Text(
                                calculadoraController.primeiroNumero.toString(),
                                key: ValueKey('primeiro-numero'),
                                style: TextStyle(fontSize: 28),
                              )
                            : SizedBox.shrink(),
                        calculadoraController.operacaoEscolhida != null
                            ? Text(
                                calculadoraController.operacaoEscolhida,
                                key: ValueKey('operacao'),
                                style: TextStyle(fontSize: 28),
                              )
                            : SizedBox.shrink(),
                        calculadoraController.segundoNumero != null
                            ? Text(
                                calculadoraController.segundoNumero.toString(),
                                key: ValueKey('segundo-numero'),
                                style: TextStyle(fontSize: 28),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Resultado: ',
                          style: TextStyle(fontSize: 28),
                        ),
                        calculadoraController.resultado != null
                            ? Text(
                                calculadoraController.resultado
                                    .toStringAsFixed(2),
                                style: TextStyle(fontSize: 28),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool todasOpcoesForamEscolhidas() {
    return calculadoraController.primeiroNumero != null &&
        calculadoraController.segundoNumero != null &&
        calculadoraController.operacaoEscolhida != null;
  }

  void onClickBotao() {
    calculadoraController.setResultado();
  }

  void onClickBotaoZerar() {
    calculadoraController.setPrimeiroNumero(null);
    calculadoraController.setSegundoNumero(null);
    calculadoraController.setOperacaoEscolhida(null);
    calculadoraController.setResultado();
  }

  void onPrimeiroNumeroEscolhido(int numero) {
    calculadoraController.setPrimeiroNumero(numero);
  }

  void onSegundoNumeroEscolhido(int numero) {
    calculadoraController.setSegundoNumero(numero);
  }

  void onOperacaoEscolhida(String operacao) {
    calculadoraController.setOperacaoEscolhida(operacao);
  }
}

class BotaoZerar extends StatelessWidget {
  BotaoZerar(this.onClickBotao);

  final VoidCallback onClickBotao;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      onPressed: onClickBotao,
      child: Text(
        'Zerar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}

class BotaoCalcular extends StatelessWidget {
  BotaoCalcular(this.onClickBotao);

  final VoidCallback onClickBotao;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      onPressed: onClickBotao,
      child: Text(
        'Calcular',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}

class Operacoes extends StatelessWidget {
  Operacoes(this.onOperacaoEscolhida);

  final Function(String) onOperacaoEscolhida;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          onTap: () => onOperacaoEscolhida('+'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('-'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '-',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('*'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '*',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('/'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '/',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('%'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '%',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Numeros extends StatelessWidget {
  Numeros(this.onNumeroEscolhido);

  final Function(int) onNumeroEscolhido;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: getNumeros(),
    );
  }

  List<Widget> getNumeros() {
    List<Widget> numeros = [];

    for (int i = 0; i < 10; i++) {
      numeros.add(
        GestureDetector(
          onTap: () => onNumeroEscolhido(i),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                i.toString(),
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return numeros;
  }
}
