import 'package:gitpicker/app/models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'favorite_controller.g.dart';

class FavoriteController = FavoriteControllerBase with _$FavoriteController;

abstract class FavoriteControllerBase with Store {

  @observable
  ObservableList<UserModel> favorites = ObservableList.of([]);

  @action
  addFavorite(UserModel userModel) {
    if (!favorites.contains(userModel)) {
      favorites.add(userModel);
    }
  }

  @action
  removeFavorite(UserModel userModel) {
    if (favorites.contains(userModel)) {
      favorites.remove(userModel);
    }
  }

}
