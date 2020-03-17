// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserProfileController on _UserProfileBase, Store {
  final _$userRepositoriesAtom =
      Atom(name: '_UserProfileBase.userRepositories');

  @override
  ObservableList<RepositoryModel> get userRepositories {
    _$userRepositoriesAtom.context.enforceReadPolicy(_$userRepositoriesAtom);
    _$userRepositoriesAtom.reportObserved();
    return super.userRepositories;
  }

  @override
  set userRepositories(ObservableList<RepositoryModel> value) {
    _$userRepositoriesAtom.context.conditionallyRunInAction(() {
      super.userRepositories = value;
      _$userRepositoriesAtom.reportChanged();
    }, _$userRepositoriesAtom, name: '${_$userRepositoriesAtom.name}_set');
  }

  final _$loadingRepositoriesAtom =
      Atom(name: '_UserProfileBase.loadingRepositories');

  @override
  bool get loadingRepositories {
    _$loadingRepositoriesAtom.context
        .enforceReadPolicy(_$loadingRepositoriesAtom);
    _$loadingRepositoriesAtom.reportObserved();
    return super.loadingRepositories;
  }

  @override
  set loadingRepositories(bool value) {
    _$loadingRepositoriesAtom.context.conditionallyRunInAction(() {
      super.loadingRepositories = value;
      _$loadingRepositoriesAtom.reportChanged();
    }, _$loadingRepositoriesAtom,
        name: '${_$loadingRepositoriesAtom.name}_set');
  }

  final _$groupAtom = Atom(name: '_UserProfileBase.group');

  @override
  Map<String, double> get group {
    _$groupAtom.context.enforceReadPolicy(_$groupAtom);
    _$groupAtom.reportObserved();
    return super.group;
  }

  @override
  set group(Map<String, double> value) {
    _$groupAtom.context.conditionallyRunInAction(() {
      super.group = value;
      _$groupAtom.reportChanged();
    }, _$groupAtom, name: '${_$groupAtom.name}_set');
  }

  final _$fetchRepositoriesAsyncAction = AsyncAction('fetchRepositories');

  @override
  Future fetchRepositories(UserModel userModel) {
    return _$fetchRepositoriesAsyncAction
        .run(() => super.fetchRepositories(userModel));
  }

  final _$_UserProfileBaseActionController =
      ActionController(name: '_UserProfileBase');

  @override
  dynamic getGroup() {
    final _$actionInfo = _$_UserProfileBaseActionController.startAction();
    try {
      return super.getGroup();
    } finally {
      _$_UserProfileBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'userRepositories: ${userRepositories.toString()},loadingRepositories: ${loadingRepositories.toString()},group: ${group.toString()}';
    return '{$string}';
  }
}
