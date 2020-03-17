import 'package:flutter_modular/flutter_modular.dart';
import 'package:gitpicker/app/models/repository_model.dart';
import 'package:gitpicker/app/models/user_model.dart';
import 'package:gitpicker/app/modules/favorite/favorite_controller.dart';
import 'package:gitpicker/app/modules/repository/github/git_hub_repository.dart';
import 'package:mobx/mobx.dart';

part 'user_profile_controller.g.dart';

class UserProfileController = _UserProfileBase with _$UserProfileController;

abstract class _UserProfileBase with Store {
  FavoriteController favoriteController = Modular.get<FavoriteController>();
  GitHubRepository gitHubRepository = Modular.get();

  @observable
  ObservableList<RepositoryModel> userRepositories = ObservableList.of([]);

  @observable
  bool loadingRepositories = true;

  @observable
  Map<String, double> group;

  @action
  fetchRepositories(UserModel userModel) async {
    loadingRepositories = true;
    this.userRepositories.clear();
    try {
      this.userRepositories.addAll(await gitHubRepository.fetchRepo(userModel.reposUrl));
      getGroup();
    } catch (MaxCallExcededException) {
      Modular.to.pushNamed('/max');
    }
    loadingRepositories = false;
  }

  @action
  getGroup() {
    List<String> languages = userRepositories.where((item) => item.language != null).whereType<RepositoryModel>().map<String>((item) => item.language).toList();
    Map<String, double> percentages = {};

    Set<String> noDuplicatedLanguages = languages.toSet();
    for (String language in noDuplicatedLanguages) {
      percentages[language] = (languages.where((item) => item == language).toList().length * 100) / languages.length;
    }

    group = percentages;
  }

}
