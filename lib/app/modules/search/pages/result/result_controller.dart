import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gitpicker/app/modules/search/search_controller.dart';
import 'package:mobx/mobx.dart';

part 'result_controller.g.dart';

class ResultController = _ResultBase with _$ResultController;

abstract class _ResultBase with Store implements Disposable {
  SearchController searchController = Modular.get();

  ScrollController scrollController = new ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
  }
}
