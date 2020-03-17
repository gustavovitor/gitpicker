import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:gitpicker/app/app_module.dart';
import 'package:gitpicker/app/models/git_user_search_response_model.dart';
import 'package:gitpicker/app/models/repository_model.dart';
import 'package:gitpicker/app/models/user_model.dart';
import 'package:gitpicker/app/modules/repository/github/except/max_calls_exceded_exception.dart';

class GitHubRepository extends Disposable {
  Dio _dio = AppModule.to.get();

  Future<List<UserModel>> fetchUsers(String searchText, { int page = 1 }) async {
    try {
      Response<Map> response = await _dio.get<Map>('/search/users', queryParameters: {
        'q': searchText,
        'per_page': 8,
        'page': page
      });

      if (response.statusCode == 200) {
        GitUserSearchResponseModel gitUserSearchResponseModel = GitUserSearchResponseModel.fromJson(response.data);
        List<UserModel> userList = [];
        for (UserModel userModel in gitUserSearchResponseModel.items) {
          userList.add(await fetchUser(userModel.url));
        }
        return userList;
      }
    } on DioError catch (e) {
      if (e.response.statusCode == 403) {
        throw new MaxCallExcededException();
      } else {
        throw e;
      }
    } on MaxCallExcededException catch (e) {
      throw e;
    }
  }

  Future<UserModel> fetchUser(String url) async {
    Response<Map> response = await _dio.get<Map>(url, options: Options(
      headers: {

      }
    ));
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data);
    }
  }

  Future<List<RepositoryModel>> fetchRepo(String url) async {
    Response<List> response = await _dio.get<List>(url, options: Options(
      headers: {

      }
    ));

    if (response.statusCode == 200) {
      return response.data.map<RepositoryModel>((item) => RepositoryModel.fromJson(item)).toList();
    }
  }

  @override
  void dispose() {}
}
