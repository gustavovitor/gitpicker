import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gitpicker/app/models/user_model.dart';
import 'package:gitpicker/app/modules/user_profile/user_profile_controller.dart';
import 'package:gitpicker/app/modules/widgets/app_header/app_header_widget.dart';
import 'package:gitpicker/app/modules/widgets/counter/counter_widget.dart';
import 'package:gitpicker/app/modules/widgets/user_image/user_image_widget.dart';
import 'package:gitpicker/app/modules/widgets/user_speak/shimmer_user_speak_widget.dart';
import 'package:gitpicker/app/modules/widgets/user_speak/user_speak_widget.dart';

class UserProfilePage extends StatefulWidget {
  final String title;
  final UserModel userModel;

  const UserProfilePage({Key key, this.title = "UserProfile", this.userModel}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends ModularState<UserProfilePage, UserProfileController> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AppHeaderWidget(action: Observer(
                    builder: (_) => IconButton(
                      onPressed: () => controller.favoriteController.favorites.contains(widget.userModel) ? controller.favoriteController.removeFavorite(widget.userModel) : controller.favoriteController.addFavorite(widget.userModel),
                      icon: Icon(controller.favoriteController.favorites.contains(widget.userModel) ? Icons.star : Icons.star_border),
                    ),
                  )),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        UserImageWidget(imageUrl: widget.userModel.avatarUrl),
                        SizedBox(height: 16,),
                        Text(
                          widget.userModel.name,
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                        ),
                        SizedBox(height: 16,),
                        Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CounterWidget(tooltip: 'Repositórios', icon: FontAwesomeIcons.book, count: widget.userModel.publicRepos),
                              CounterWidget(tooltip: 'Seguidores', icon: FontAwesomeIcons.userFriends, count: widget.userModel.followers),
                              CounterWidget(tooltip: 'Seguindo', icon: FontAwesomeIcons.walking, count: widget.userModel.following),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Observer(
                      builder: (_) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Esse cara fala:',
                            maxLines: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                            ),
                          ),
                        ]..addAll(
                            controller.loadingRepositories ? [
                              ShimmerUserSpeakWidget(),
                              ShimmerUserSpeakWidget(),
                              ShimmerUserSpeakWidget()
                            ] : controller.group != null ? controller.group.keys.map((key) {
                              return UserSpeakWidget(
                                language: key,
                                percentage: controller.group[key],
                              );
                            }) : [Text('Não tem nenhum repositório público :(')]
                        ),
                      ),
                    ),
                  ),
                ]
            )
          ],
        )
      )
    );
  }

  @override
  void initState() {
    super.initState();
    controller.fetchRepositories(widget.userModel);
  }
}
