import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<bool> showExitAppDialog(BuildContext context) async {
  return (await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Keluar Dari MoGawe?'),
      content: const Text(
          'Apakah kamu yakin untuk keluar dari aplikasi MoGawe?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Tidak'),
        ),
        TextButton(
          onPressed: () {
            // Terbaik untuk semua platform
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          },
          child: const Text('Iya'),
        ),
      ],
    ),
  )) ??
      false;
}
