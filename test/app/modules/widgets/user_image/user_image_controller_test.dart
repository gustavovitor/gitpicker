import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:gitpicker/app/modules/widgets/user_image/user_image_controller.dart';
import 'package:gitpicker/app/app_module.dart';

void main() {
  initModule(AppModule());
  UserImageController userimage;

  setUp(() {
    userimage = AppModule.to.get<UserImageController>();
  });

  group('UserImageController Test', () {
    test("First Test", () {
      expect(userimage, isInstanceOf<UserImageController>());
    });

    test("Set Value", () {
      expect(userimage.value, equals(0));
      userimage.increment();
      expect(userimage.value, equals(1));
    });
  });
}
