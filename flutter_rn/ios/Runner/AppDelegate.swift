import Flutter
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // do this before the channel or it may not work
        GeneratedPluginRegistrant.register(with: self)
        
        let flutterController = window?.rootViewController as! FlutterViewController
        let navigationController = UINavigationController(rootViewController: flutterController)
        window?.rootViewController = navigationController
        FlutterManager.shared.setupChannels(with: navigationController, and: flutterController)
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
