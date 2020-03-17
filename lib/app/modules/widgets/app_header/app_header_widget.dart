import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppHeaderWidget extends StatelessWidget {

  AppHeaderWidget({ this.title, this.action });

  final String title;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(FontAwesomeIcons.angleLeft),
          ),
          SizedBox(
            width: 16,
          ),
          title != null ? Text(title, style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24
          ),) : Container(),
          action != null ? Align(
            alignment: Alignment.centerRight,
            child: action,
          ) : Container()
        ],
      ),
    );
  }
}
