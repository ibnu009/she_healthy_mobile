import 'package:flutter/material.dart';

import '../../../core/theme/app_primary_theme.dart';

class EditFieldTextStatis extends StatelessWidget {
  final String text;

  const EditFieldTextStatis({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black38)),
      child: Text(text, style: AppTheme.bodyText,),
    );
  }
}
