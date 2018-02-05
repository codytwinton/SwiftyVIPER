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

	private var router: MockRouter!
	private var interactor: MockInteractor!
	private var view: MockView!

	private var presenter: ___VARIABLE_productName___Presenter!

	// MARK: Test Functions

	func testInteractor() {
		presenter.viewLoaded()
		presenter.viewAppearing()
		presenter.viewAppeared()
		presenter.viewDisappeared()
		XCTAssert(interactor.titleRequested)
	}

	func testView() {
		presenter.set(title: "___VARIABLE_productName___")
		XCTAssertEqual(view.title, "___VARIABLE_productName___")
	}

	// MARK: Setup

	override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		router = MockRouter()
		interactor = MockInteractor()
		view = MockView()

		presenter = ___VARIABLE_productName___Presenter(router: self.router, interactor: self.interactor)
		presenter.view = self.view
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}

// MARK: - Mock Classes

// MARK: -

private class MockRouter: RouterProtocol, ___VARIABLE_productName___PresenterRouterProtocol {
	// MARK: Variables

	var viewController: UIViewController?
}

// MARK: -

private class MockInteractor: ___VARIABLE_productName___PresenterInteractorProtocol {
	// MARK: Variables

	var titleRequested: Bool = false

	// MARK: Functions

	func requestTitle() {
		titleRequested = true
	}
}

// MARK: -

private class MockView: ___VARIABLE_productName___PresenterViewProtocol {
	// MARK: Variables

	var title: String?

	// MARK: Functions

	func set(title: String?) {
		self.title = title
	}
}
