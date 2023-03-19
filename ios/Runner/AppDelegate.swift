import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    //GMSServices.provideAPIKey("AIzaSyCFdhE6u3aZNK3PupjFUE0u3EmSQt9lAuc")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
