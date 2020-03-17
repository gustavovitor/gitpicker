import 'package:flutter_modular/flutter_modular.dart';
import 'package:gitpicker/app/modules/favorite/favorite_controller.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
}
