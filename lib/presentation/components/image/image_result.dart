import 'dart:io';

import 'package:flutter/material.dart';

import '../dialog/dialog_choose_image.dart';
import 'image_full_screen.dart';

class ExploriaImageResult extends StatelessWidget {
  final Function() onTapGallery;
  final File image;
  final String heroTag;
  final double? width, height;
  const ExploriaImageResult({Key? key, required this.onTapGallery,  required this.image, required this.heroTag, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        chooseImage(
            context: context,
            onTapGallery: onTapGallery,
            onTapFullScreen: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) =>
                      ImageFullScreen(
                        image: image,
                        heroTag: heroTag,
                      ),
                ),
              );
            });
      },
      child: Hero(
        tag: heroTag,
        child: Center(
          child: SizedBox(
            height: height ?? double.infinity,
            width: width ?? double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(image, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
