import 'package:flutter/material.dart';

import '../../../core/theme/app_primary_theme.dart';

AppBar customGenericAppbar(
    BuildContext context, String title, Function() onTap) {
  return AppBar(
    leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        )),
    backgroundColor: AppTheme.primaryColor,
    title: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
  );
}

class HomeAppBar extends StatelessWidget {
  final String url;

  const HomeAppBar({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 56,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: 72,
              height: 36,
              child: Image.asset("assets/sh_logo.png")),
          const Spacer(),

        ],
      ),
    );
  }
}

class GenericAppBar extends StatelessWidget {
  final String url, title;

  const GenericAppBar({Key? key, required this.url, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 56,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              color: AppTheme.primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              title,
              style: AppTheme.subTitle.copyWith(color: AppTheme.primaryColor),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.settings,
              color: AppTheme.primaryColor,
              size: 26,
            ),
          ),
        ],
      ),
    );
  }
}
