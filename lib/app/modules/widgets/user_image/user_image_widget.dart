import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class UserImageWidget extends StatelessWidget {

  UserImageWidget({ @required this.imageUrl });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
