import 'package:flutter/material.dart';
class UserImageSmall extends StatelessWidget {
  const UserImageSmall({
    super.key,
    required this.assetPaths,
  });
  final String assetPaths;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8,right: 8),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetPaths),
          fit: BoxFit.cover,

        ),
        borderRadius: BorderRadius.circular(5.0),
      ),

    );
  }
}
