import 'package:mobx/mobx.dart';

part 'max_calls_exceded_controller.g.dart';

class MaxCallsExcededController = _MaxCallsExcededBase
    with _$MaxCallsExcededController;

abstract class _MaxCallsExcededBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
