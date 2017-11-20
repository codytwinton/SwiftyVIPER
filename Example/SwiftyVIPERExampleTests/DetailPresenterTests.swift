//
//  DetailPresenterTests.swift
//  Project: SwiftyVIPERExample
//
//  Module: Detail
//
//  By Cody Winton 11/9/16
//  codeRed 2016
//

// MARK: Imports

import SwiftyVIPER
@testable import SwiftyVIPERExample
import XCTest

// MARK: -

class DetailPresenterTests: XCTestCase {

	// MARK: - Variables

	private var router: MockRouter?
	private var interactor: MockInteractor?
	private var view: MockView?

	private var presenter: DetailPresenter?

	// MARK: Test Functions

	func testInteractor() {
		presenter?.viewLoaded()
		presenter?.viewAppearing()
		presenter?.viewAppeared()
		presenter?.viewDisappeared()
		XCTAssert(interactor?.titleRequested ?? false)
	}

	func testRouter() {
		presenter?.closeSelected()
		XCTAssert(router?.shouldDismiss ?? false)
	}

	func testView() {
		presenter?.set(title: "Detail")
		XCTAssertEqual(view?.title, "Detail")
	}

	// MARK: Setup

	override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		let router = MockRouter()
		self.router = router

		let interactor = MockInteractor()
		self.interactor = interactor

		view = MockView()

		presenter = DetailPresenter(router: router, interactor: interactor)
		presenter?.view = self.view
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}

// MARK: - Mock Classes

// MARK: -

private class MockRouter: RouterProtocol, DetailPresenterRouterProtocol {

	// MARK: Variables

	var viewController: UIViewController?
	var shouldDismiss: Bool = false

	// MARK: Functions

	func dismiss(completion: CodeBlock?) {
		shouldDismiss = true
		completion?()
	}
}

// MARK: -

private class MockInteractor: DetailPresenterInteractorProtocol {

	// MARK: Variables

	var titleRequested: Bool = false

	// MARK: Functions

	func requestTitle() {
		titleRequested = true
	}
}

// MARK: -

private class MockView: DetailPresenterViewProtocol {

	// MARK: Variables

	var title: String?

	// MARK: Functions

	func set(title: String?) {
		self.title = title
	}
}
