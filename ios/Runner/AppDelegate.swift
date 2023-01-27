import UIKit
import Flutter
import Firebase
import GoogleMobileAds
import GoogleMaps


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      GMSServices.provideAPIKey("AIzaSyCZ5U8PYa4cHUnkYH0-beIzokgYQcUpBWs")
      FirebaseApp.configure() //add this before the code below
    GeneratedPluginRegistrant.register(with: self)
      GADMobileAds.sharedInstance().start(completionHandler: nil)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
