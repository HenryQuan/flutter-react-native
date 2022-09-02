import Flutter
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let flutterController = window?.rootViewController as! FlutterViewController
        let navigationController = UINavigationController(rootViewController: flutterController)
        window?.rootViewController = navigationController
        FlutterManager.shared.setupChannels(with: navigationController, and: flutterController)
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
