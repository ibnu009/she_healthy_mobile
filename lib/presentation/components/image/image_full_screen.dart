import 'dart:io';

import 'package:flutter/material.dart';

class ImageFullScreen extends StatelessWidget {
  final File image;
  final String heroTag;
  const ImageFullScreen({Key? key, required this.image, required this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Photo'),),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: heroTag,
            child: Image.file(image),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
