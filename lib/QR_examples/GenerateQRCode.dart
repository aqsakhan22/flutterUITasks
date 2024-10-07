
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  GenerateQRCodeState createState() => GenerateQRCodeState();
}

class GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + QR code'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your URL'),
            ),
          ),
          //This button when pressed navigates to QR code generation
          ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return QRImage1(controller);
                    }),
                  ),
                );
              },
              child: const Text('GENERATE QR CODE')),
          // Image.asset("assets/img.png")
        ],
      ),
    );
  }
}



class QRImage1 extends StatelessWidget {
  const QRImage1(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + QR code'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            QrImageView(
              data: controller.text,

              //"https://play.google.com/store/apps/details?id=com.bmadevelopers.research&hl=en",

              size: 200,
              errorCorrectionLevel: QrErrorCorrectLevel.H,
              gapless: false,
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              // You can include embeddedImageStyle Property if you
              //wanna embed an image from your Asset folder
              embeddedImageStyle: QrEmbeddedImageStyle(
                size: const Size(
                  100,
                  100,
                ),
              ),
              embeddedImage: AssetImage("assets/img.png"),
            ),
         IconButton(onPressed: (){

         }, icon: Icon(Icons.share))

          ],
        ),
      ),
    );
  }
}