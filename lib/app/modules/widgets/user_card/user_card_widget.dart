import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gitpicker/app/models/user_model.dart';
import 'package:gitpicker/app/modules/widgets/counter/counter_widget.dart';
import 'package:gitpicker/app/modules/widgets/user_card/shimmer_user_card.dart';
import 'package:gitpicker/app/modules/widgets/user_image/user_image_widget.dart';
import 'package:transparent_image/transparent_image.dart';

class UserCardWidget extends StatelessWidget {

  UserCardWidget({ @required this.userModel });

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    if (userModel.name == null) {
      return ShimmerUserCard();
    }

    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed('/profile', arguments: userModel);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: UserImageWidget(imageUrl: userModel.avatarUrl),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    userModel.name,
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    ),
                  ),
                  Text(
                    userModel.bio != null ? userModel.bio : '...',
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CounterWidget(tooltip: 'Repositórios', icon: FontAwesomeIcons.book, count: userModel.publicRepos),
                      CounterWidget(tooltip: 'Seguidores', icon: FontAwesomeIcons.userFriends, count: userModel.followers),
                      CounterWidget(tooltip: 'Seguindo', icon: FontAwesomeIcons.walking, count: userModel.following),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}
