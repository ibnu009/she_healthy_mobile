import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:she_healthy/presentation/pages/cervix_classification_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(
      duration,
      () {
        Navigator.of(context).pushReplacement(
          CupertinoPageRoute(
            builder: (context) {
              return const CervixClassificationPage();
            },
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          const SizedBox(
            width: double.infinity,
          ),
          Image.asset('assets/sh_logo.png'),
          const Spacer(),
          const Text(
            'Version 0.0.1',
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
