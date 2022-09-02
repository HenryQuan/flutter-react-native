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
        }
    }
}
