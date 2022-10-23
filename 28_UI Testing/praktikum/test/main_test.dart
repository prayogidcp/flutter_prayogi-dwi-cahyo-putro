import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:praktikum/main.dart';
import 'package:flutter_test/flutter_test.dart';

Widget homePage() {
  return const MaterialApp(
    home: HomeScreen(),
  );
}

void main() {
  group("Home Screen Widget Test", () {
    testWidgets("Judul Barcode Prayogi", (widgetTester) async {
      await widgetTester.pumpWidget(homePage());
      expect(find.text("Barcode Prayogi"), findsOneWidget);
    });
    testWidgets("Terdapat AppBar Widget", (widgetTester) async {
      await widgetTester.pumpWidget(homePage());
      expect(find.byType(AppBar), findsOneWidget);
    });
    testWidgets("Terdapat ListView", (widgetTester) async {
      await widgetTester.pumpWidget(homePage());
      expect(find.byType(ListView), findsOneWidget);
    });
  });
}
