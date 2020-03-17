import 'package:mobx/mobx.dart';

part 'user_image_controller.g.dart';

class UserImageController = _UserImageBase with _$UserImageController;

abstract class _UserImageBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
