import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerUserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Shimmer.fromColors(
                child: Container(
                    color: Colors.white.withAlpha(50),
                    margin: EdgeInsets.symmetric(vertical: 4)
                ),
                baseColor: Colors.white,
                highlightColor: Colors.grey
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: next(80, 160).roundToDouble(),
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
                SizedBox(
                  width: next(60, 160),
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
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 40,
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
                    SizedBox(
                      width: 40,
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
                    SizedBox(
                      width: 40,
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
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  double next(int min, int max) => min + Random().nextInt(max - min).roundToDouble();
}
