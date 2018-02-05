//
//  ___FILENAME___
//  Project: ___PROJECTNAME___
//
//  Module: ___VARIABLE_productName___
//
//  By ___FULLUSERNAME___ ___DATE___
//  ___ORGANIZATIONNAME___ ___YEAR___
//

// MARK: Imports

import XCTest

@testable import ___PROJECTNAME___

import SwiftyVIPER

// MARK: -

class ___FILEBASENAMEASIDENTIFIER___: XCTestCase {

	// MARK: - Variables

	private var router: ___VARIABLE_productName___Router?

	// MARK: Setup

	override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		router = ___VARIABLE_productName___Router()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
