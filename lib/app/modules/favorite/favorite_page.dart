import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gitpicker/app/modules/favorite/favorite_controller.dart';
import 'package:gitpicker/app/modules/widgets/app_header/app_header_widget.dart';
import 'package:gitpicker/app/modules/widgets/user_card/user_card_widget.dart';

class FavoritePage extends StatefulWidget {
  final String title;
  const FavoritePage({Key key, this.title = "Favoritos"}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends ModularState<FavoritePage, FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 250, 1),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppHeaderWidget(title: 'Favoritos',),
            Expanded(
              child: Observer(
                builder: (_) => ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 16, right: 16),
                  children: controller.favorites.map<Widget>((userModel) => UserCardWidget(userModel: userModel)).toList()
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
