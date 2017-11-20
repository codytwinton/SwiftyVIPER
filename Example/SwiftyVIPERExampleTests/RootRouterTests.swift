//
//  RootRouterTests.swift
//  Project: SwiftyVIPERExample
//
//  Module: Root
//
//  By Cody Winton 11/9/16
//  codeRed 2016
//

// MARK: Imports

import SwiftyVIPER
@testable import SwiftyVIPERExample
import XCTest

// MARK: -

class RootRouterTests: XCTestCase {

	// MARK: - Variables

	private var router: RootRouter?

	// MARK: Test Functions

	func testDetails() {
		router?.detailsSelected()
	}

	// MARK: Setup

	override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		router = RootRouter()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
