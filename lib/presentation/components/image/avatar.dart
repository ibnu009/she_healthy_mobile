import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: Image.network(
        url,
        errorBuilder: (_, __, ___) {
          return Image.asset("assets/images/default_profile.png");
        },
      ).image,
      onBackgroundImageError: (_, __) {},
    );
  }
}