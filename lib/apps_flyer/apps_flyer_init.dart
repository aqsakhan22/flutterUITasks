

import 'package:appsflyer_sdk/appsflyer_sdk.dart';

class AppsFlyerFunctions{
  static AppsFlyerOptions? appsFlyerOptions;
  static AppsflyerSdk? appsflyerSdk;
  // Optional field


 static Future <void> init() async{
    // Starting the SDK with optional success and error callbacks
    try{
      appsFlyerOptions = AppsFlyerOptions(
        afDevKey: "4XzdV9Ufcn6FPNYheAefqA",
        appId: "",
        showDebug: true,
        timeToWaitForATTUserAuthorization: 50, // for iOS 14.5
        appInviteOneLink: "https://squarepaymentflutter.onelink.me/czAs/p3sqfc7n", // Optional field
        disableAdvertisingIdentifier: false, // Optional field
        disableCollectASA: false, //Optional field
        manualStart: true, );
      AppsflyerSdk appsflyerSdk = AppsflyerSdk(appsFlyerOptions);
      appsflyerSdk.startSDK(
        onSuccess: () {
          print("AppsFlyer SDK initialized successfully.");
        },
        onError: (int errorCode, String errorMessage) {
          print("Error initializing AppsFlyer SDK: Code $errorCode - $errorMessage");
        },

      );
      await appsflyerSdk.initSdk(
          registerConversionDataCallback: true,
          registerOnAppOpenAttributionCallback: true,
          registerOnDeepLinkingCallback: true
      );
      appsflyerSdk.onDeepLinking((deepLink) {
        if (deepLink != null) {
          // Handle the deep link here
          print('Deep Link Data: $deepLink');
          // Navigate to the appropriate screen based on deep link data
        }
      });
    }
        catch(e){
      print("catch error is ${e}");

        }
  }

  static Future<void> pushUserProfile(String userId) async {
    appsflyerSdk!.setCustomerUserId(userId);
  }

  void logLoginEvent() {
    appsflyerSdk!.logEvent("Login", {
      "status": "true"
    });
  }
  static Future<bool?> logEvent(String eventName, Map? eventValues) async {
    bool? result;
    try {
      result = await appsflyerSdk!.logEvent(eventName, eventValues);
    } on Exception catch (e) {}
    print("Result logEvent: $result");
  }

}