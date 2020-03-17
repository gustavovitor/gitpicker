import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:gitpicker/app/modules/widgets/user_speak/user_speak_controller.dart';
import 'package:gitpicker/app/app_module.dart';

void main() {
  initModule(AppModule());
  UserSpeakController userspeak;

  setUp(() {
    userspeak = AppModule.to.get<UserSpeakController>();
  });

  group('UserSpeakController Test', () {
    test("First Test", () {
      expect(userspeak, isInstanceOf<UserSpeakController>());
    });

    test("Set Value", () {
      expect(userspeak.value, equals(0));
      userspeak.increment();
      expect(userspeak.value, equals(1));
    });
  });
}
