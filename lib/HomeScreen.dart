import 'package:flutter/material.dart';
import 'package:stream_video/stream_video.dart';
import 'package:streamvideoapp/LiveStreamScreen.dart';
import 'package:streamvideoapp/topVariables.dart';
// https://getstream.io/video/sdk/flutter/tutorial/livestreaming/
// https://medium.com/@usamawizard/webrtc-flutter-sdk-build-your-web-app-in-4-simple-steps-7856fc285c76
//

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _createLivestream(),
          child: const Text('Create a Livestream'),
        ),
      ),
    );
  }

  Future<void> _createLivestream() async {
    final call = StreamVideo.instance.makeCall(
      callType: StreamCallType.liveStream(),
       //StreamCallType.liveStream(),
      id: CallID,
    );
    call.connectOptions = CallConnectOptions(
      camera: TrackOption.enabled(),
      microphone: TrackOption.enabled(),
    );
    final result = await call.getOrCreate(); // Call object is created
    if (result.isSuccess) {
      await call.join(); // Our local app user can join and receive events
      await call.goLive(); // Allow others to see and join the call (exit backstage mode)

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LiveStreamScreen(
            livestreamCall: call,
          ),
        ),
      );
    } else {
      debugPrint('Not able to create a call.');
    }

  }
}
