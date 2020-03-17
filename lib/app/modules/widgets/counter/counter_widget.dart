import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {

  CounterWidget({ @required this.tooltip, @required this.icon, @required this.count});

  final String tooltip;
  final IconData icon;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.withAlpha(80),
        ),
        child: Row(
          children: <Widget>[
            Icon(
                icon
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              count.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
