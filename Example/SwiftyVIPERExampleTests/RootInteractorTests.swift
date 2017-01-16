//
//  RootInteractorTests.swift
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

class RootInteractorTests: XCTestCase {

	// MARK: - Variables

	fileprivate var presenter: MockPresenter!
	fileprivate var interactor: RootInteractor!

	// MARK: Test Functions

	func testPresenter() {
		interactor.requestTitle()
		XCTAssertEqual(presenter.title, "Root")
	}

	// MARK: Setup

    override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		presenter = MockPresenter()

		interactor = RootInteractor()
		interactor.presenter = self.presenter
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}

// MARK: - Mock Classes

// MARK: -

fileprivate class MockPresenter: RootInteractorPresenterProtocol {

	// MARK: Variables

	var title: String?

	// MARK: Functions

	func set(title: String?) {
		self.title = title
	}
}
