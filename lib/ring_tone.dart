import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
class RingtoneExample extends StatelessWidget {
  const RingtoneExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: ElevatedButton(onPressed: (){
          FlutterRingtonePlayer().play(
            android: AndroidSounds.notification,
            ios: IosSounds.glass,
            looping: true, // Android only - API >= 28
            volume: 0.1, // Android only - API >= 28
            asAlarm: false,
            // Android only - all APIs
          );
        }, child: Text("Ringtone Example")),
      ),
    );
  }
}
