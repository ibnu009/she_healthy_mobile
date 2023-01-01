import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_primary_theme.dart';

class PrimaryButton extends StatelessWidget {
  final BuildContext context;
  final bool isEnabled;
  final Function() onPressed;
  final Function()? onInActivePressed;

  final String text;
  final Color? color, textColor;
  final double? width, height, borderRadius, horizontalPadding, textSize, elevation;
  final double? margin;
  final TextStyle? style;

  const PrimaryButton(
      {Key? key,
      required this.context,
      required this.isEnabled,
      required this.onPressed,
      this.color,
      this.margin,
      this.style,
      required this.text, this.width, this.height, this.borderRadius, this.horizontalPadding, this.textSize, this.elevation, this.textColor, this.onInActivePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: !isEnabled ? Colors.grey : color ?? AppTheme.primaryColor,
      elevation: elevation ?? 2,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 12)),
      ),
    );

    return Container(
      height: height ?? 55,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: margin ?? 16),
      child: ElevatedButton(
        style: raisedButtonStyle,
        onPressed: isEnabled ? onPressed : onInActivePressed ?? () {},
        child: Text(
          text,
          style: style ?? AppTheme.smallTitle.copyWith(
            color: textColor ?? Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}