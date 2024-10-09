//
// import 'dart:io';
// import 'dart:typed_data';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutteruitask/QR_examples/GenerateQRCode.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
// https://medium.com/@bedirhanssaglam/share-text-and-images-from-your-flutter-app-directly-to-social-media-efa0ef657fcc

class QRCodePlayground extends StatefulWidget {
  @override
  _QRCodePlaygroundState createState() => _QRCodePlaygroundState();
}

class _QRCodePlaygroundState extends State<QRCodePlayground> {
  List listofQR=[];
  ScreenshotController screenshotController = ScreenshotController();
  ScreenshotController screenshotController1 = ScreenshotController();
  final TextEditingController tfController = TextEditingController();
  List QRImg=[];

  /*  void _shareFile(BuildContext context) async {
      print("share file is ${fileUrl.contains('pdf') ? filePathUrl : imagePathUrl }$fileUrl");
    final box = context.findRenderObject() as RenderBox?;
    var isShared = false;
    if (Platform.isAndroid || Platform.isIOS) {
      // print("we checking on IOS");
      try {
        var response = await http.get(Uri.parse('${fileUrl.contains('pdf') ? filePathUrl : imagePathUrl }$fileUrl'));
        final directory = (await getTemporaryDirectory()).path;
        final path = (fileUrl.contains('pdf'))
            ? '$directory/file.pdf'
            : '$directory/file.png';

        File file = File(path);
        file.writeAsBytesSync(response.bodyBytes);
        List<XFile> files = [];
        files.add(XFile(path));

          // if(path.contains('png')){
          //
          //   // final tempDir = await getTemporaryDirectory();
          //   // final file = await File('${tempDir.path}/image.jpg').create();
          //   // file.writeAsBytesSync(response.bodyBytes);
          //   Share.shareFiles(['${file.path}'], text: 'Great picture');
          //   // Share.shareFiles(['assets/img_1.png'], text: 'Great picture');
          //
          // }


        await Share.shareXFiles(
          files,
          subject: "BMA Capital Morning News",
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
        );




        isShared = true;
        print("File has been shared");
      } catch (e) {
       print("Sharing file ${e}");
       MyMethods().toastMessage(e.toString());
      }
    }

    if (!isShared) {
      Share.share(fileUrl);
    }
  }

  void _downloadFile(BuildContext context) async {
    // print("download file is ${fileUrl} ${fileUrl.contains('pdf') ? filePathUrl : imagePathUrl }$fileUrl");
    // Request storage permission
    var status = await Permission.storage.request();
    if (status.isGranted) {
      try {
        // print("fileUrl is http://15.206.35.78/uploads/research/${fileUrl} ");
        //http://15.206.35.78/uploads/research/${fileUrl}
        // var response = await http.get(Uri.parse(fileUrl));
        var response = await http
            .get(Uri.parse('${fileUrl.contains('pdf') ? filePathUrl : imagePathUrl}${fileUrl}'));
        print("response body part is ${response.statusCode}");

        var filePath = '';

        String fileName = fileUrl.substring(fileUrl.lastIndexOf('/') + 1);
        if (Platform.isIOS) {
          final appDocumentsDir = await getApplicationDocumentsDirectory();
          filePath = '${appDocumentsDir.path}/$fileName';
        } else {
          // String dir = '/storage/emulated/0/Documents';
          String dir = '/storage/emulated/0/Download';
          // done by AK to rename this random file name to file
          filePath =
              (fileUrl.contains('pdf')) ? '$dir/file.pdf' : '$dir/file.png';
          // filePath = '$dir/$fileName'; // tauheed code
        }

        // final appDocumentsDir = await getExternalStorageDirectory();

        File file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        AppSnackBar.showSnackBar(context, 'File saved');
        print('File saved in $filePath');
      } catch (e) {
        AppSnackBar.showSnackBar(context, '$e');
      }
    } else {
      AppSnackBar.showSnackBar(context, 'Permission denied');
    }
  }*/


 Future<void> _generateCode() async {
    final directory = (await getApplicationDocumentsDirectory()).path;
    screenshotController.capture().then(( image) async {
      if (image != null) {
        try {
          String fileName = tfController.text+"${Random().nextInt(10).floor()}";
          //DateTime.now().microsecondsSinceEpoch.toString();
          final imagePath = await File('$directory/$fileName.png').create();
          print("file name is ${imagePath}");
          if (imagePath != null) {
            await imagePath.writeAsBytes(image);
// share simple path
//             Share.share(imagePath.path);
            // Share with Image
            //
            // await Share.shareXFiles([XFile(imagePath.path)], text: 'Check out this image!');
            // print("");
            QRImg.add({'name':fileName,"QRImage":XFile(imagePath.path)});
            setState(() {

            });

            // File file = File(imagePath.path);
            // print("image path readASBytes is ${file.readAsBytesSync()}");
            // file.writeAsBytesSync(file.readAsBytesSync());
            // print("file read ${file}");
            // List<XFile> files = [];
            // files.add(XFile(imagePath.path));
            // await Share.shareXFiles(
            //   files,
            //   subject: "BMA Capital Morning News",
            //   sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
            // );
          }
        } catch (error) {}
      }
    }).catchError((onError) {
      print('Error --->> $onError');
    });
  }
 Future<void> _shareQrCode(String Title) async {
    final directory = (await getApplicationDocumentsDirectory()).path;
    // final box = context.findRenderObject() as RenderBox?;
    screenshotController1.capture().then(( image) async {
      if (image != null) {
        try {
          String fileName = tfController.text+"${Random().nextInt(10).floor()}";
          //DateTime.now().microsecondsSinceEpoch.toString();
          final imagePath = await File('$directory/$fileName.png').create();
          if (imagePath != null) {
            await imagePath.writeAsBytes(image);
// share simple path
//             Share.share(imagePath.path);
            // Share with Image

            await Share.shareXFiles([XFile(imagePath.path)], text: '${Title}');

            // File file = File(imagePath.path);
            // print("image path readASBytes is ${file.readAsBytesSync()}");
            // file.writeAsBytesSync(file.readAsBytesSync());
            // print("file read ${file}");
            // List<XFile> files = [];
            // files.add(XFile(imagePath.path));
            // await Share.shareXFiles(
            //   files,
            //   subject: "BMA Capital Morning News",
            //   sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
            // );
          }
        } catch (error) {}
      }
    }).catchError((onError) {
      print('Error --->> $onError');
    });
  }
  @override
  Widget build(BuildContext context) {

    return
     Scaffold
       (
       appBar: AppBar(
         backgroundColor: Colors.blue,
         title: Text("QRCodePlayground",style: TextStyle(color: Colors.white),),
       ),
       body:  Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16.0),
       child: Column(
         children: [
           // Text("QRImg ${QRImg.length}"),
           tfController.text.isEmpty
               ? SizedBox.shrink()
               : Screenshot(
               controller: screenshotController,
               child: Container(
                   // width: 500,
                   // height: 100,
                   child:
                   QrImageView(
                     data: tfController.text,

                     //"https://play.google.com/store/apps/details?id=com.bmadevelopers.research&hl=en",

                     size: 200,
                     errorCorrectionLevel: QrErrorCorrectLevel.H,
                     gapless: false,
                     foregroundColor: Colors.black,
                     // backgroundColor: Colors.white,
                     // You can include embeddedImageStyle Property if you
                     //wanna embed an image from your Asset folder
                     embeddedImageStyle: QrEmbeddedImageStyle(
                       size: const Size(
                         100,
                         100,
                       ),
                     ),
                     // embeddedImage: AssetImage("assets/img.png"),
                   ),

               )
           ),
           SizedBox(height: 20),
           TextField(
             controller: tfController,
             decoration: InputDecoration(
                 border: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.blue))),
           ),
           SizedBox(height: 20),
           tfController.text.isEmpty ?
           ElevatedButton(
               style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.green
               ),
               onPressed: (){


             if (tfController.text.isEmpty) {
               ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text('Generate your QR code first')));
             } else {
               _generateCode();
             }
             setState(() {

               print("qr image length is ${QRImg.length}");
             });
           }, child: Text("Generate QR Code",style: TextStyle(color: Colors.white),))

           :
           SizedBox()
           ,

           ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.blue
               ),
               onPressed: (){
             if (tfController.text.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text('Generate your QR code first')));
             } else {
               _shareQrCode("Share QR CODE");
             }
           }, child: Text("Share QR code",style: TextStyle(color: Colors.white),)),
           ElevatedButton(
               style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.red
               ),
               onPressed: (){

             tfController.text="";
             QRImg=[];
setState(() {

});
           }, child: Text("Clear",style: TextStyle(color: Colors.white),)),
             Expanded(

                 child:
                 ListView.builder(
                 shrinkWrap: true,
                 itemCount: QRImg.length,
                 itemBuilder: (context,int index){
                   return Container(
                     // color: Colors.blue,
                     padding: EdgeInsets.symmetric(vertical: 10.0),
                     child:
                     Row(
                       children: [
                         Text("${QRImg[index]['name']}",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600),),

                         IconButton(onPressed: (){
                           _shareQrCode(QRImg[index]['name']);
                         }, icon: Icon(Icons.share)),
                     Spacer(),
                     Screenshot(
                       child:  QrImageView(
                       data:QRImg[index]['name'].toString(),

                       //"https://play.google.com/store/apps/details?id=com.bmadevelopers.research&hl=en",

                       size: 90,
                       errorCorrectionLevel: QrErrorCorrectLevel.H,
                       gapless: false,
                       foregroundColor: Colors.black,
                       // backgroundColor: Colors.white,
                       // You can include embeddedImageStyle Property if you
                       //wanna embed an image from your Asset folder
                       embeddedImageStyle: QrEmbeddedImageStyle(
                         size: const Size(
                           100,
                           100,
                         ),
                       ),
                       // embeddedImage: AssetImage("assets/img.png"),
                     ),
                       controller: screenshotController1,),
                     // Image.file(
                     //       height: 70,
                     //       File(QRImg[index]['QRImage'].path)
                     //   ),
                       ],
                     ),


                   );
                 })
             )

         ],
       ),
     ),);
  }

}
