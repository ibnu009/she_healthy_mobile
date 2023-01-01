import 'package:flutter/material.dart';

import '../../../core/theme/app_primary_theme.dart';

class GenericRadiusTextContainer extends StatelessWidget {
  final String text;
  final double? radius, height, width, fontSize, hMargin, hPadding;
  final FontWeight? fontWeight;
  final Color? color;

  const GenericRadiusTextContainer(
      {Key? key, required this.text, this.radius, this.height, this.width, this.fontSize, this.fontWeight, this.color, this.hMargin, this.hPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      alignment: Alignment.centerLeft,
      width: width ?? double.infinity,
      margin: EdgeInsets.symmetric(horizontal: hMargin ?? 16),
      padding: EdgeInsets.symmetric(horizontal: hPadding ?? 16),
      decoration: BoxDecoration(
        color: color ?? AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(radius ?? 8),
      ),
      child: Center(
        child: Text(
          text,
          style: AppTheme.bodyText.copyWith(
            color: Colors.white,
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight ?? FontWeight.normal
          ),
        ),
      ),
    );
  }
}
