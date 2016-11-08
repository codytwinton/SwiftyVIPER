//
//  ___FILENAME___
//  Project: ___PROJECTNAME___
//
//  Module: ___VARIABLE_viperModuleName___
//
//  By ___FULLUSERNAME___ ___DATE___
//  ___ORGANIZATIONNAME___ ___YEAR___
//

// MARK: Imports

import XCTest

@testable import ___PROJECTNAME___

import SwiftyVIPER


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___ModuleTests: XCTestCase {

	// MARK: - Variables


	// MARK: Test Functions

	func testSetup() {
		let module = ___FILEBASENAMEASIDENTIFIER___Module()
		XCTAssertNotNil(module.presenter.view)
		XCTAssertNotNil(module.router.viewController)
		XCTAssertNotNil(module.interactor.presenter)
		XCTAssertNotNil(module.viewController)
	}


	// MARK: Setup

	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}

	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
}
