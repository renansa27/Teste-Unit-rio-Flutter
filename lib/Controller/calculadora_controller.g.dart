// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadora_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculadoraController on _CalculadoraControllerBase, Store {
  final _$primeiroNumeroAtom =
      Atom(name: '_CalculadoraControllerBase.primeiroNumero');

  @override
  int get primeiroNumero {
    _$primeiroNumeroAtom.reportRead();
    return super.primeiroNumero;
  }

  @override
  set primeiroNumero(int value) {
    _$primeiroNumeroAtom.reportWrite(value, super.primeiroNumero, () {
      super.primeiroNumero = value;
    });
  }

  final _$segundoNumeroAtom =
      Atom(name: '_CalculadoraControllerBase.segundoNumero');

  @override
  int get segundoNumero {
    _$segundoNumeroAtom.reportRead();
    return super.segundoNumero;
  }

  @override
  set segundoNumero(int value) {
    _$segundoNumeroAtom.reportWrite(value, super.segundoNumero, () {
      super.segundoNumero = value;
    });
  }

  final _$operacaoEscolhidaAtom =
      Atom(name: '_CalculadoraControllerBase.operacaoEscolhida');

  @override
  String get operacaoEscolhida {
    _$operacaoEscolhidaAtom.reportRead();
    return super.operacaoEscolhida;
  }

  @override
  set operacaoEscolhida(String value) {
    _$operacaoEscolhidaAtom.reportWrite(value, super.operacaoEscolhida, () {
      super.operacaoEscolhida = value;
    });
  }

  final _$resultadoAtom = Atom(name: '_CalculadoraControllerBase.resultado');

  @override
  double get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(double value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  final _$_CalculadoraControllerBaseActionController =
      ActionController(name: '_CalculadoraControllerBase');

  @override
  void setPrimeiroNumero(int primeiroNumero) {
    final _$actionInfo = _$_CalculadoraControllerBaseActionController
        .startAction(name: '_CalculadoraControllerBase.setPrimeiroNumero');
    try {
      return super.setPrimeiroNumero(primeiroNumero);
    } finally {
      _$_CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSegundoNumero(int segundoNumero) {
    final _$actionInfo = _$_CalculadoraControllerBaseActionController
        .startAction(name: '_CalculadoraControllerBase.setSegundoNumero');
    try {
      return super.setSegundoNumero(segundoNumero);
    } finally {
      _$_CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOperacaoEscolhida(String operacaoEscolhida) {
    final _$actionInfo = _$_CalculadoraControllerBaseActionController
        .startAction(name: '_CalculadoraControllerBase.setOperacaoEscolhida');
    try {
      return super.setOperacaoEscolhida(operacaoEscolhida);
    } finally {
      _$_CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResultado() {
    final _$actionInfo = _$_CalculadoraControllerBaseActionController
        .startAction(name: '_CalculadoraControllerBase.setResultado');
    try {
      return super.setResultado();
    } finally {
      _$_CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
primeiroNumero: ${primeiroNumero},
segundoNumero: ${segundoNumero},
operacaoEscolhida: ${operacaoEscolhida},
resultado: ${resultado}
    ''';
  }
}
