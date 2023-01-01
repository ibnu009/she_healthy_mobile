import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  final double? height, width;
  final BoxFit? fit;
  final String? loadingAssets;
  const LoadingWidget({Key? key, this.height, this.width, this.fit, this.loadingAssets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      loadingAssets ?? 'assets/lottie/loading_pembayaran.json',
      height: height ?? 160,
      width: width ?? 160,
      fit: fit,
    );
  }
}
