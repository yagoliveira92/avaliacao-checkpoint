// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Teste básico da tela de login', (WidgetTester tester) async {
    // Constroí nosso app e aciona um frame (uma atualização da tela).
    await tester.pumpWidget(const LoginApp());

    // Verifica se nossa tela principal foi renderizada com sucesso.
    // (Opcionalmente, mais tarde podemos verificar se botões de e-mail e senha existem aqui)
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
