//
//  AppDelegate.swift
//  SwiftyVIPER
//
//  Created by Cody Winton on 11/4/16.
//  Copyright © 2016 codeRed. All rights reserved.
//

import UIKit

import SnapKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		let rootModule = RootModule()
		
		window = UIWindow(frame: UIScreen.main.bounds)
		window?.rootViewController = rootModule.view
		window?.backgroundColor = .white
		window?.makeKeyAndVisible()
		
		// Override point for customization after application launch.
		return true
	}
}

