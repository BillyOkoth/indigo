import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {

  final String imagePath;
  final Size size;

  const RoundedImage({Key key, this.imagePath, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imagePath,
        // scale: 0.4,
        width:100,
        height:100,
        fit: BoxFit.fitWidth,
      ),
    );
  }


}
