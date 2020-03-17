import 'package:gitpicker/app/modules/search/pages/max_calls_exceded/max_calls_exceded_controller.dart';
import 'package:gitpicker/app/modules/search/pages/max_calls_exceded/max_calls_exceded_page.dart';
import 'package:gitpicker/app/modules/search/pages/result/result_controller.dart';
import 'package:gitpicker/app/modules/search/pages/result/result_page.dart';
import 'package:gitpicker/app/modules/search/search_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gitpicker/app/modules/search/search_page.dart';

class SearchModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MaxCallsExcededController()),
        Bind((i) => ResultController()),
        Bind((i) => SearchController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SearchPage()),
        Router('/result', child: (_, args) => ResultPage()),
        Router('/max', child: (_, args) => MaxCallsExcededPage())
      ];

  static Inject get to => Inject<SearchModule>.of();
}
