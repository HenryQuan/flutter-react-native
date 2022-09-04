//
//  ReactNativeManager.swift
//  Runner
//
//  Created by Yiheng Quan on 2/9/2022.
//

import Foundation

@objc(ReactNativeManager)
@objcMembers
class ReactNativeManager: NSObject, RCTBridgeModule {
    static func moduleName() -> String! {
        return "ReactNativeManager"
    }
    
    static func requiresMainQueueSetup() -> Bool {
        return false
    }
    
    func showFlutter() {
        DispatchQueue.main.async {
            FlutterManager.shared.showFlutterViewController()
            // set this to false so the app knows if it should show react native
            let userDefaults = UserDefaults.standard
            userDefaults.set(false, forKey: "flutter.use_rn")
        }
    }
}
