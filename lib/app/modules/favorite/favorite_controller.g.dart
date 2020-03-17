// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoriteController on FavoriteControllerBase, Store {
  final _$favoritesAtom = Atom(name: 'FavoriteControllerBase.favorites');

  @override
  ObservableList<UserModel> get favorites {
    _$favoritesAtom.context.enforceReadPolicy(_$favoritesAtom);
    _$favoritesAtom.reportObserved();
    return super.favorites;
  }

  @override
  set favorites(ObservableList<UserModel> value) {
    _$favoritesAtom.context.conditionallyRunInAction(() {
      super.favorites = value;
      _$favoritesAtom.reportChanged();
    }, _$favoritesAtom, name: '${_$favoritesAtom.name}_set');
  }

  final _$FavoriteControllerBaseActionController =
      ActionController(name: 'FavoriteControllerBase');

  @override
  dynamic addFavorite(UserModel userModel) {
    final _$actionInfo = _$FavoriteControllerBaseActionController.startAction();
    try {
      return super.addFavorite(userModel);
    } finally {
      _$FavoriteControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeFavorite(UserModel userModel) {
    final _$actionInfo = _$FavoriteControllerBaseActionController.startAction();
    try {
      return super.removeFavorite(userModel);
    } finally {
      _$FavoriteControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'favorites: ${favorites.toString()}';
    return '{$string}';
  }
}
