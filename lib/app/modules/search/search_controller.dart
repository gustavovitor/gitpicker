import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gitpicker/app/models/user_model.dart';
import 'package:gitpicker/app/modules/repository/github/git_hub_repository.dart';
import 'package:mobx/mobx.dart';

part 'search_controller.g.dart';

class SearchController = _SearchBase with _$SearchController;

abstract class _SearchBase with Store implements Disposable {
  GitHubRepository _gitHubRepository = Modular.get();

  TextEditingController searchInputController = TextEditingController();

  @observable
  bool loading = false;

  @observable
  bool canSearch = false;

  @observable
  ObservableList<UserModel> users = ObservableList.of([]);

  @action
  search() async {
    await fetchUsers(page);
    searchInputController.clear();
    canSearch = false;
    Modular.to.pushNamed('/result');
  }

  @action
  updateSearch(String text) {
    this.users.clear();
    this.page = 1;
    canSearch = text != null && text.isNotEmpty;
    if (canSearch) {
      searchText = text;
    } else {
      searchText = null;
    }
  }

  @observable
  String searchText;

  @observable
  int page = 1;

  @action
  fetchUsers(int page) async {
    loading = true;

    if (page == 1)
      this.users.clear();

    try {
      this.users.addAll([UserModel(), UserModel(), UserModel(), UserModel(), UserModel(), UserModel(), UserModel(), UserModel()]);
      int initialRange = this.users.length - 8;
      int endRange = this.users.length;
      List<UserModel> gitHubUsers = await _gitHubRepository.fetchUsers(searchText, page: page);
      this.users.replaceRange(initialRange, endRange, gitHubUsers);
    } catch (MaxCallExcededException) {
      Modular.to.pushNamed('/max');
    }
    loading = false;
  }

  @override
  void dispose() {
    searchInputController.dispose();
  }
  
  void reload() {
    page = 1;
  }
}
