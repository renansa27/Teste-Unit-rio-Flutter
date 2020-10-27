// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:calculadora_flutter_dell/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Testando a criação da Calculadora', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Calculadora());

    expect(find.byType(Calculadora), findsOneWidget);
  });

  testWidgets('Testando todo o visual dos componentes da calculadora',
      (tester) async {
    await tester.pumpWidget(Calculadora());
    //Localizando o componente a ser testado.
    final zero = find.text('0');
    final um = find.text('1');
    final dois = find.text('2');
    final tres = find.text('3');
    final quatro = find.text('4');
    final cinco = find.text('5');
    final seis = find.text('6');
    final sete = find.text('7');
    final oito = find.text('8');
    final nove = find.text('9');
    final mais = find.text('+');
    final menos = find.text('-');
    final divisao = find.text('/');
    final multiplicacao = find.text('*');
    final resto = find.text('%');
    final btnCalcular = find.text('Calcular');
    final btnZerar = find.text('Zerar');
    final lbOperacao = find.text('Operação: ');
    final lbResultado = find.text('Resultado: ');
    //Verificando se os componentes estão com as quantidades corretas na tela.
    expect(zero, findsNWidgets(4));
    expect(um, findsNWidgets(2));
    expect(dois, findsNWidgets(2));
    expect(tres, findsNWidgets(2));
    expect(quatro, findsNWidgets(2));
    expect(cinco, findsNWidgets(2));
    expect(seis, findsNWidgets(2));
    expect(sete, findsNWidgets(2));
    expect(oito, findsNWidgets(2));
    expect(nove, findsNWidgets(2));
    expect(mais, findsNWidgets(1));
    expect(menos, findsNWidgets(1));
    expect(divisao, findsNWidgets(1));
    expect(multiplicacao, findsNWidgets(1));
    expect(resto, findsNWidgets(1));
    expect(btnCalcular, findsNWidgets(1));
    expect(btnZerar, findsNWidgets(1));
    expect(lbOperacao, findsNWidgets(1));
    expect(lbResultado, findsNWidgets(1));
  });

  testWidgets('Testando as operações matemáticas da calculadora',
      (tester) async {
    await tester.pumpWidget(Calculadora());
    final oito = find.text('8').first;
    final dois = find.text('2').last;
    final soma = find.text('+');
    final menos = find.text('-');
    final divisao = find.text('/');
    final multiplicacao = find.text('*');
    final resto = find.text('%');
    final btnZerar = find.text('Zerar');
    final btnCalcular = find.text('Calcular');

    //Soma
    await tester.tap(oito);
    await tester.pump();
    await tester.tap(soma);
    await tester.pump();
    await tester.tap(dois);
    await tester.pump();
    await tester.tap(btnCalcular);
    await tester.pump();
    expect(find.text('10.00'), findsOneWidget);
    await tester.tap(btnZerar);
    await tester.pump();

    //Subtração
    await tester.tap(oito);
    await tester.pump();
    await tester.tap(menos);
    await tester.pump();
    await tester.tap(dois);
    await tester.pump();
    await tester.tap(btnCalcular);
    await tester.pump();
    expect(find.text('6.00'), findsOneWidget);
    await tester.tap(btnZerar);
    await tester.pump();

    //Multiplicação
    await tester.tap(oito);
    await tester.pump();
    await tester.tap(multiplicacao);
    await tester.pump();
    await tester.tap(dois);
    await tester.pump();
    await tester.tap(btnCalcular);
    await tester.pump();
    expect(find.text('16.00'), findsOneWidget);
    await tester.tap(btnZerar);
    await tester.pump();

    //Divisão
    await tester.tap(oito);
    await tester.pump();
    await tester.tap(divisao);
    await tester.pump();
    await tester.tap(dois);
    await tester.pump();
    await tester.tap(btnCalcular);
    await tester.pump();
    expect(find.text('4.00'), findsOneWidget);
    await tester.tap(btnZerar);
    await tester.pump();

    //Resto
    await tester.tap(oito);
    await tester.pump();
    await tester.tap(resto);
    await tester.pump();
    await tester.tap(dois);
    await tester.pump();
    await tester.tap(btnCalcular);
    await tester.pump();
    expect(find.text('0.00'), findsOneWidget);
    await tester.tap(btnZerar);
    await tester.pump();

    //Validação do botão resetar
    expect(find.byKey(ValueKey('primeiro-numero')), findsNothing);
    expect(find.byKey(ValueKey('operacao')), findsNothing);
    expect(find.byKey(ValueKey('segundo-numero')), findsNothing);
  });
}
