//
//  ProtocolTests.swift
//  SwiftyVIPER
//
//  Created by Cody Winton on 11/7/16.
//  Copyright © 2016 codeRed. All rights reserved.
//

// MARK: Imports

import XCTest

import SwiftyVIPER


// MARK: -

class ProtocolTests: XCTestCase {
	
	// MARK: - Variables
	
	var module: MockModule!
	var router: MockRouter!
	
	
	// MARK: Test Functions
	
	func testPresentDismiss() {
		
		let viewController = UIViewController()
		viewController.beginAppearanceTransition(true, animated: false)
		viewController.endAppearanceTransition()
		
		module.present(from: viewController, style: UIModalTransitionStyle.crossDissolve, completion: nil)
		
		router.dismiss(completion: nil)
		
		router.viewController = nil
		router.dismiss(completion: nil)
	}
	
	func testPushPop() {
		
		let viewController = UIViewController()
		let navController = UINavigationController(rootViewController: viewController)
		navController.beginAppearanceTransition(true, animated: false)
		navController.endAppearanceTransition()
		
		module.push(from: navController)
		router.pop()
	}
	
	func testPresent() {
		
		let viewController = UIViewController()
		viewController.beginAppearanceTransition(true, animated: false)
		viewController.endAppearanceTransition()
		
		module.present(from: viewController, style: UIModalTransitionStyle.crossDissolve, completion: nil)
		
		let newVC = UIViewController()
		newVC.beginAppearanceTransition(true, animated: false)
		newVC.endAppearanceTransition()
		
		router.present(newVC, completion: nil)
		
		router.viewController = nil
		router.present(newVC, completion: nil)
	}
	
	func testPresenter() {
		
		let presenter = MockPresenter()
		
		presenter.viewLoaded()
		presenter.viewAppearing()
		presenter.viewAppeared()
		presenter.viewDisappeared()
	}
	
	func testStoryboard() {
		var storyboardName: String! = nil
		
		#if os(iOS)
			storyboardName = "iOS"
		#elseif os(tvOS)
			storyboardName = "tvOS"
		#endif
		
		let bundle = Bundle(for: ProtocolTests.self)
		
		let storyboard = UIStoryboard(name: storyboardName, bundle: bundle)
		let viewController = storyboard.viewController(MockViewController.self)
		XCTAssertNotNil(viewController)
	}
	
	
	// MARK: Setup
	
	override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		
		module = MockModule()
		router = module.router
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
