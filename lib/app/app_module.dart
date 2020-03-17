import 'package:gitpicker/app/modules/widgets/user_speak/user_speak_controller.dart';
import 'package:gitpicker/app/modules/widgets/counter/counter_controller.dart';
import 'package:gitpicker/app/modules/widgets/user_image/user_image_controller.dart';
import 'package:gitpicker/app/modules/user_profile/user_profile_controller.dart';
import 'package:dio/dio.dart';
import 'package:gitpicker/app/modules/favorite/favorite_controller.dart';
import 'package:gitpicker/app/modules/favorite/favorite_page.dart';
import 'package:gitpicker/app/modules/user_profile/user_profile_page.dart';
import 'package:gitpicker/app/modules/widgets/user_card/user_card_controller.dart';
import 'package:gitpicker/app/modules/repository/github/git_hub_repository.dart';
import 'package:gitpicker/app/modules/widgets/app_input/app_input_controller.dart';
import 'package:gitpicker/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:gitpicker/app/app_widget.dart';
import 'package:gitpicker/app/modules/search/search_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserSpeakController()),
        Bind((i) => CounterController()),
        Bind((i) => UserImageController()),
        Bind((i) => UserProfileController()),
        Bind((i) => UserCardController()),
        Bind((i) => Dio(BaseOptions(baseUrl: 'https://api.github.com'))),
        Bind((i) => GitHubRepository()),
        Bind((i) => FavoriteController()),
        Bind((i) => AppInputController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: SearchModule()),
        Router('/favorite', child: (_, args) => FavoritePage()),
        Router('/profile',
            child: (_, args) => UserProfilePage(userModel: args.data)),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
