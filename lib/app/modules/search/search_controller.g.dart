// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchController on _SearchBase, Store {
  final _$loadingAtom = Atom(name: '_SearchBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$canSearchAtom = Atom(name: '_SearchBase.canSearch');

  @override
  bool get canSearch {
    _$canSearchAtom.context.enforceReadPolicy(_$canSearchAtom);
    _$canSearchAtom.reportObserved();
    return super.canSearch;
  }

  @override
  set canSearch(bool value) {
    _$canSearchAtom.context.conditionallyRunInAction(() {
      super.canSearch = value;
      _$canSearchAtom.reportChanged();
    }, _$canSearchAtom, name: '${_$canSearchAtom.name}_set');
  }

  final _$usersAtom = Atom(name: '_SearchBase.users');

  @override
  ObservableList<UserModel> get users {
    _$usersAtom.context.enforceReadPolicy(_$usersAtom);
    _$usersAtom.reportObserved();
    return super.users;
  }

  @override
  set users(ObservableList<UserModel> value) {
    _$usersAtom.context.conditionallyRunInAction(() {
      super.users = value;
      _$usersAtom.reportChanged();
    }, _$usersAtom, name: '${_$usersAtom.name}_set');
  }

  final _$searchTextAtom = Atom(name: '_SearchBase.searchText');

  @override
  String get searchText {
    _$searchTextAtom.context.enforceReadPolicy(_$searchTextAtom);
    _$searchTextAtom.reportObserved();
    return super.searchText;
  }

  @override
  set searchText(String value) {
    _$searchTextAtom.context.conditionallyRunInAction(() {
      super.searchText = value;
      _$searchTextAtom.reportChanged();
    }, _$searchTextAtom, name: '${_$searchTextAtom.name}_set');
  }

  final _$pageAtom = Atom(name: '_SearchBase.page');

  @override
  int get page {
    _$pageAtom.context.enforceReadPolicy(_$pageAtom);
    _$pageAtom.reportObserved();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.context.conditionallyRunInAction(() {
      super.page = value;
      _$pageAtom.reportChanged();
    }, _$pageAtom, name: '${_$pageAtom.name}_set');
  }

  final _$searchAsyncAction = AsyncAction('search');

  @override
  Future search() {
    return _$searchAsyncAction.run(() => super.search());
  }

  final _$fetchUsersAsyncAction = AsyncAction('fetchUsers');

  @override
  Future fetchUsers(int page) {
    return _$fetchUsersAsyncAction.run(() => super.fetchUsers(page));
  }

  final _$_SearchBaseActionController = ActionController(name: '_SearchBase');

  @override
  dynamic updateSearch(String text) {
    final _$actionInfo = _$_SearchBaseActionController.startAction();
    try {
      return super.updateSearch(text);
    } finally {
      _$_SearchBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'loading: ${loading.toString()},canSearch: ${canSearch.toString()},users: ${users.toString()},searchText: ${searchText.toString()},page: ${page.toString()}';
    return '{$string}';
  }
}
