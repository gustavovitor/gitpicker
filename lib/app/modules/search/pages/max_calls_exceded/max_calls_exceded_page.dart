import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gitpicker/app/modules/widgets/app_header/app_header_widget.dart';

class MaxCallsExcededPage extends StatefulWidget {
  final String title;
  const MaxCallsExcededPage({Key key, this.title = "MaxCallsExceded"})
      : super(key: key);

  @override
  _MaxCallsExcededPageState createState() => _MaxCallsExcededPageState();
}

class _MaxCallsExcededPageState extends State<MaxCallsExcededPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 250, 1),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppHeaderWidget(),
            Center(
              child: Column(
                children: <Widget>[
                  Icon(FontAwesomeIcons.hourglassStart, size: 60,),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Consumimos demais a API.. Precisamos aguardar pelo menos 1 hora..',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
