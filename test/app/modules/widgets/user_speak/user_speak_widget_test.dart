import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:gitpicker/app/modules/widgets/user_speak/user_speak_widget.dart';

main() {
  testWidgets('UserSpeakWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(UserSpeakWidget()));
    final textFinder = find.text('UserSpeak');
    expect(textFinder, findsOneWidget);
  });
}
