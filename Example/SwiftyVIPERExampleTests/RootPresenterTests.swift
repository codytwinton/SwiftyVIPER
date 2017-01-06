//
//  RootPresenterTests.swift
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

class RootPresenterTests: XCTestCase {

	// MARK: - Variables

	fileprivate var router: MockRouter!
	fileprivate var interactor: MockInteractor!
	fileprivate var view: MockView!

	fileprivate var presenter: RootPresenter!

	// MARK: Test Functions

	func testInteractor() {
		presenter.viewLoaded()
		presenter.viewAppearing()
		presenter.viewAppeared()
		presenter.viewDisappeared()
		XCTAssert(interactor.titleRequested)
	}

	func testRouter() {
		presenter.detailsSelected()
		XCTAssert(router.shouldShowDetails)
	}

	func testView() {
		presenter.set(title: "Root")
		XCTAssertEqual(view.title, "Root")
	}

	// MARK: Setup

	override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		router = MockRouter()
		interactor = MockInteractor()
		view = MockView()

		presenter = RootPresenter(router: self.router, interactor: self.interactor)
		presenter.view = self.view
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}

// MARK: - Mock Classes

// MARK: -

fileprivate class MockRouter: RouterProtocol, RootPresenterRouterProtocol {

	// MARK: Variables

	var viewController: UIViewController?
	var shouldShowDetails: Bool = false

	// MARK: Functions

	func detailsSelected() {
		shouldShowDetails = true
	}
}

// MARK: -

fileprivate class MockInteractor: RootPresenterInteractorProtocol {

	// MARK: Variables

	var titleRequested: Bool = false

	// MARK: Functions

	func requestTitle() {
		titleRequested = true
	}
}

// MARK: -

fileprivate class MockView: RootPresenterViewProtocol {

	// MARK: Variables

	var title: String? = nil

	// MARK: Functions

	func set(title: String?) {
		self.title = title
	}
}
