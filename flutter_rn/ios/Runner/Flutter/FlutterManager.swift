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

    private var navController: UINavigationController!
    private var flutterController: FlutterViewController!
    private var rnController: UIViewController!

    func setupChannels(with navController: UINavigationController, and flutterController: FlutterViewController) {
        navController.isNavigationBarHidden = true

        self.navController = navController
        self.flutterController = flutterController
        let channel = FlutterMethodChannel(name: "FlutterChannel", binaryMessenger: flutterController.binaryMessenger)
        channel.setMethodCallHandler { [weak self] call, result in
            switch call.method {
            case "show_rn":
                self?.showReactNativeController()
                result(true)
            default:
                result(FlutterMethodNotImplemented)
            }
        }
    }

    func showFlutterViewController() {
        print(flutterController)
        navController.pushViewController(flutterController, animated: true)
        navController.viewControllers = [flutterController]
    }

    private func showReactNativeController() {
        print(rnController)
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "rn-module",
            initialProperties: nil,
            launchOptions: nil
        )

        if rnController == nil {
            rnController = UIViewController()
            rnController.view = rootView
        }

        navController.pushViewController(rnController, animated: true)
        navController.viewControllers = [rnController]
    }
}
