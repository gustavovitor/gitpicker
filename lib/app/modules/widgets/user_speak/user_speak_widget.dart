import 'package:flutter/material.dart';

class UserSpeakWidget extends StatelessWidget {

  UserSpeakWidget({ @required this.language, this.percentage });

  final String language;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              language,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(50),
                shape: BoxShape.circle
              ),
              width: 50,
              height: 50,
              child: Center(
                child: Text(
                  '${percentage.toStringAsFixed(1)}%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
