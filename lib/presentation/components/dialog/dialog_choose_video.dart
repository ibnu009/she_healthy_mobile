import 'package:flutter/material.dart';

void chooseVideo(
    {required BuildContext context,
    required Function() onTapGallery,
    required Function() onTapCamera,
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
                      onTap: onTapCamera,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(children: const [
                          Icon(Icons.videocam,
                              size: 24, color: Colors.black),
                          SizedBox(width: 16),
                          Text("Ambil Video", style: TextStyle(fontSize: 16))
                        ]),
                      ),
                    ),
                    InkWell(
                      onTap: onTapGallery,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(children: const [
                          Icon(Icons.image, size: 24, color: Colors.black),
                          SizedBox(width: 16),
                          Text("Dari Galeri", style: TextStyle(fontSize: 16))
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
                          Text("Lihat Video", style: TextStyle(fontSize: 16))
                        ]),
                      ),
                    ) : const SizedBox()
                  ],
                ),
              ),
            ),
          ));
}
