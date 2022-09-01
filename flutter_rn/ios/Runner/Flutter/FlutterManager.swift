//
//  FlutterManager.swift
//  Runner
//
//  Created by Yiheng Quan on 31/8/2022.
//

import Flutter
import Foundation
import React

class FlutterManager {
    static let shared = FlutterManager()
    private init() {}
    
    private var rootController: FlutterViewController!
    
    func setupChannels(with controller: FlutterViewController) {
        rootController = controller
        let channel = FlutterMethodChannel(name: "FlutterChannel", binaryMessenger: controller.binaryMessenger)
        channel.setMethodCallHandler { [weak self] call, result in
            switch call.method {
            case "show_rn":
                // show the react native view here
                self?.showReactNativeController()
                result(true)
            default:
                result(FlutterMethodNotImplemented)
            }
        }
    }
    
    private func showReactNativeController() {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "rn-module",
            initialProperties: nil,
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        rootController.present(vc, animated: true, completion: nil)
    }
}
