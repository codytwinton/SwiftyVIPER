//
//  DetailRouterTests.swift
//  Project: SwiftyVIPERExample
//
//  Module: Detail
//
//  By Cody Winton 11/9/16
//  codeRed 2016
//

// MARK: Imports

@testable import SwiftyVIPERExample
import XCTest

// MARK: -

class DetailRouterTests: XCTestCase {

	// MARK: - Variables

	private var router: DetailRouter?

	// MARK: Setup

	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		router = DetailRouter()
    }

    override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
    }
}
