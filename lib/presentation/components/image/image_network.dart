import 'package:flutter/material.dart';

import '../generic/loading_widget.dart';

const String defaultImage = "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1578620671/wwa6sd5wyp1wxjrder5i.png";
class GenericImageNetwork extends StatelessWidget {
  final String? imageUrl;
  final double? width, height;

  const GenericImageNetwork({Key? key, required this.imageUrl, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl ?? defaultImage,
      width: width,
      height: height,
      fit: BoxFit.cover,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(
          child: LoadingWidget(
            width: 80,
            height: 80,
          ),
        );
      },
    );
  }
}