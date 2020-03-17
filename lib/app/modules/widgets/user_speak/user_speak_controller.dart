import 'package:mobx/mobx.dart';

part 'user_speak_controller.g.dart';

class UserSpeakController = _UserSpeakBase with _$UserSpeakController;

abstract class _UserSpeakBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
