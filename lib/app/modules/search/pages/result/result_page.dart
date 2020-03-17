import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gitpicker/app/modules/search/pages/result/result_controller.dart';
import 'package:gitpicker/app/modules/widgets/app_header/app_header_widget.dart';
import 'package:gitpicker/app/modules/widgets/user_card/user_card_widget.dart';

class ResultPage extends StatefulWidget {
  final String title;

  const ResultPage({Key key, this.title = "Result"}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends ModularState<ResultPage, ResultController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 250, 1),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppHeaderWidget(title: 'Resultados',),
            Expanded(
              child: Observer(
                builder: (_) => ListView.builder(
                  controller: controller.scrollController,
                  itemCount: controller.searchController.users.length,
                  itemBuilder: (_, index) => UserCardWidget(userModel: controller.searchController.users[index]),
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 16, right: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller.scrollController.addListener(() {
      if (controller.scrollController.position.pixels >= controller.scrollController.position.maxScrollExtent * 0.8) {
        controller.searchController.page++;
        controller.searchController.fetchUsers(controller.searchController.page);
      }
    });
  }
}
