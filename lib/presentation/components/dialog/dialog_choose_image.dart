import 'package:flutter/material.dart';

void chooseImage(
    {required BuildContext context,
    required Function() onTapGallery,
      Function()? onTapFullScreen}) {
  showDialog(
      context: context,
      builder: (ctx) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Material(
                borderRadius: BorderRadius.circular(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: onTapGallery,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(children: const [
                          Icon(Icons.image, size: 24, color: Colors.black),
                          SizedBox(width: 16),
                          Text("Retake dari galeri", style: TextStyle(fontSize: 16))
                        ]),
                      ),
                    ),
                    onTapFullScreen != null ? InkWell(
                      onTap: onTapFullScreen,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(children: const [
                          Icon(Icons.fullscreen, size: 24, color: Colors.black),
                          SizedBox(width: 16),
                          Text("Lihat Foto", style: TextStyle(fontSize: 16))
                        ]),
                      ),
                    ) : const SizedBox()
                  ],
                ),
              ),
            ),
          ));
}
