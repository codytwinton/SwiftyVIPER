//
//  RootModuleTests.swift
//  Project: SwiftyVIPERExample
//
//  Module: Root
//
//  By Cody Winton 11/9/16
//  codeRed 2016
//

// MARK: Imports

import XCTest

@testable import SwiftyVIPERExample

import SwiftyVIPER


// MARK: -

class RootModuleTests: XCTestCase {
	
	// MARK: - Variables
	
	var module: RootModule!
	
	
	// MARK: Test Functions
	
	func testSetup() {
		XCTAssertNotNil(module)
		
		XCTAssertNotNil(module.interactor)
		XCTAssertNotNil(module.router)
		XCTAssertNotNil(module.presenter)
		XCTAssertNotNil(module.view)
		XCTAssertNotNil(module.viewController)
		
		XCTAssertNotNil(module.view.presenter)
		
		XCTAssertNotNil(module.presenter.view)
		XCTAssertNotNil(module.presenter.router)
		XCTAssertNotNil(module.presenter.interactor)
		
		XCTAssertNotNil(module.router.viewController)
		
		XCTAssertNotNil(module.interactor.presenter)
	}
	
	
	// MARK: Setup
	
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		
		module = RootModule()
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
}
