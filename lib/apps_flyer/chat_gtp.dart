import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class DeepLinkHandler extends StatefulWidget {
  const DeepLinkHandler({Key? key}) : super(key: key);

  @override
  State<DeepLinkHandler> createState() => _DeepLinkHandlerState();
}

class _DeepLinkHandlerState extends State<DeepLinkHandler> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Deep Link Example')),
      body: Center(child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              final String textToCopy = "https://squarepaymentflutter.onelink.me/czAs/p3sqfc7n";
              //"https://squarepaymentflutter.onelink.me/czAs/p3sqfc7n";
              if (textToCopy.isNotEmpty) {
                try {
                  await Clipboard.setData(ClipboardData(text: textToCopy));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Copied to Clipboard!')),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to copy to clipboard.')),
                  );
                }
              }
            },
            child: const Text('Copy to Clipboard'),
          ),
          Text('Waiting for deep link...'),
        ],
      )),
    );
  }
}
