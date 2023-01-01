import 'package:flutter/material.dart';
import 'package:she_healthy/core/theme/app_primary_theme.dart';

import '../dialog/dialog_choose_image.dart';

class ImagePlaceHolder extends StatelessWidget {
  final Function() onTapGallery;
  final double? width, height;
  const ImagePlaceHolder({Key? key, required this.onTapGallery, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapGallery,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
         child: SizedBox(
           height: height ?? 100,
           width: width ?? 100,
           child: const Padding(
             padding: EdgeInsets.all(10),
             child: Icon(
               Icons.camera_alt,
               color: AppTheme.primaryColor,
               size: 32,
             ),
           ),
         ),
        )
      ),
    );
  }
}
