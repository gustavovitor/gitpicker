import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:gitpicker/app/modules/widgets/counter/counter_widget.dart';

main() {
  testWidgets('CounterWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CounterWidget()));
    final textFinder = find.text('Counter');
    expect(textFinder, findsOneWidget);
  });
}
