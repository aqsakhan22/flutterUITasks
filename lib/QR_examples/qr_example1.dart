import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

/*
 * QR.Flutter
 * Copyright (c) 2019 the QR.Flutter authors.
 * See LICENSE for distribution and usage details.
 */



/// This is the screen that you'll see when the app starts
class QRScreen extends StatefulWidget {
  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  @override
  Widget build(BuildContext context) {
    const String message =
    // ignore: lines_longer_than_80_chars
        'Hey this is a QR code. Change this value in the main_screen.dart file.';



    return Material(
      color: Colors.white,
      child: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                    width: 200,
                    child:
                    QrImageView(
                      data: message,
                      version: QrVersions.auto,
                      eyeStyle: const QrEyeStyle(
                        eyeShape: QrEyeShape.square,
                        color: Color(0xff128760),
                       // borderRadius: 10,
                      ),
                      dataModuleStyle: const QrDataModuleStyle(
                        dataModuleShape: QrDataModuleShape.square,
                        color: Color(0xff1a5441),
                        // borderRadius: 5,
                        // roundedOutsideCorners: true,
                      ),
                      embeddedImage: AssetImage('assets/img.png'),
                      embeddedImageStyle: QrEmbeddedImageStyle(
                        size: Size.square(40),
                        color: Colors.white,
                        // safeArea: true,
                        // safeAreaMultiplier: 1.1,
                        // embeddedImageShape: EmbeddedImageShape.square,
                        // shapeColor: Color(0xff128760),
                        // borderRadius: 10,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40)
                    .copyWith(bottom: 40),
                child: Text(message),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

