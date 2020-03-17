import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerUserSpeakWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: next(40, 100).roundToDouble(),
              height: 20,
              child: Shimmer.fromColors(
                  child: Container(
                      color: Colors.white.withAlpha(50),
                      margin: EdgeInsets.symmetric(vertical: 4)
                  ),
                  baseColor: Colors.white,
                  highlightColor: Colors.grey
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(50),
                  shape: BoxShape.circle
              ),
              width: 50,
              height: 50,
              child: Shimmer.fromColors(
                  child: Container(
                      color: Colors.white.withAlpha(50),
                      margin: EdgeInsets.symmetric(vertical: 4)
                  ),
                  baseColor: Colors.white,
                  highlightColor: Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }

  double next(int min, int max) => min + Random().nextInt(max - min).roundToDouble();
}
