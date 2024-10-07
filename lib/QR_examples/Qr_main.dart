import 'package:flutter/material.dart';
import 'package:flutteruitask/QR_examples/GenerateQRCode.dart';
class QRMain extends StatelessWidget {
  const QRMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Generator"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => GenerateQRCode()));
          }, child: Text("Generate QR CODE")),
          ElevatedButton(onPressed: () {
            

          }, child: Text("Scan QR CODE")),
        ],
      ),
    );
  }
}
