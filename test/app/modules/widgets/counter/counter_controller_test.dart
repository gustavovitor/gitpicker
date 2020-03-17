import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:gitpicker/app/modules/widgets/counter/counter_controller.dart';
import 'package:gitpicker/app/app_module.dart';

void main() {
  initModule(AppModule());
  CounterController counter;

  setUp(() {
    counter = AppModule.to.get<CounterController>();
  });

  group('CounterController Test', () {
    test("First Test", () {
      expect(counter, isInstanceOf<CounterController>());
    });

    test("Set Value", () {
      expect(counter.value, equals(0));
      counter.increment();
      expect(counter.value, equals(1));
    });
  });
}
