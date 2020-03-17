import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gitpicker/app/modules/search/search_controller.dart';
import 'package:gitpicker/app/modules/widgets/app_input/app_input_widget.dart';

class SearchPage extends StatefulWidget {
  final String title;
  const SearchPage({Key key, this.title = "Search"}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends ModularState<SearchPage, SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 250, 1),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Favoritos',
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Modular.to.pushNamed('/favorite');
        },
        child: Icon(Icons.star)
      ),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.github,
                size: 72,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 16, bottom: 12),
                child: AppInputWidget(
                  onChanged: (text) => controller.updateSearch(text),
                  controller: controller.searchInputController,
                  hintText: 'Usuário do Github..',
                  icon: Icon(
                    FontAwesomeIcons.userNinja,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 46,
                        child: Observer(
                          builder: (_) => RaisedButton(
                            color: Theme.of(context).primaryColor,
                            onPressed: controller.canSearch ? () {
                              controller.search();
                            } : null,
                            child: Text(
                              'Procurar',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Observer(
            builder: (_) {
              if (controller.loading) {
                return Container(
                  color: Colors.black.withAlpha(150),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return Container();
              }
            },
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller.reload();
  }
}
