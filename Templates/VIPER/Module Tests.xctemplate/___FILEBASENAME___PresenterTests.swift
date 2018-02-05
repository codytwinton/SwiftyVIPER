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

class ___FILEBASENAMEASIDENTIFIER___PresenterTests: XCTestCase {

	// MARK: - Variables

	fileprivate var router: MockRouter!
	fileprivate var interactor: MockInteractor!
	fileprivate var view: MockView!

	fileprivate var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter!

	// MARK: Test Functions

	func testInteractor() {
		presenter.viewLoaded()
		presenter.viewAppearing()
		presenter.viewAppeared()
		presenter.viewDisappeared()
		XCTAssert(interactor.titleRequested)
	}

	func testView() {
		presenter.set(title: "___FILEBASENAMEASIDENTIFIER___")
		XCTAssertEqual(view.title, "___FILEBASENAMEASIDENTIFIER___")
	}

	// MARK: Setup

	override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		router = MockRouter()
		interactor = MockInteractor()
		view = MockView()

		presenter = ___FILEBASENAMEASIDENTIFIER___Presenter(router: self.router, interactor: self.interactor)
		presenter.view = self.view
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}

// MARK: - Mock Classes

// MARK: -

fileprivate class MockRouter: RouterProtocol, ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol {
	// MARK: Variables

	var viewController: UIViewController?
}

// MARK: -

fileprivate class MockInteractor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
	// MARK: Variables

	var titleRequested: Bool = false

	// MARK: Functions

	func requestTitle() {
		titleRequested = true
	}
}

// MARK: -

fileprivate class MockView: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {
	// MARK: Variables

	var title: String? = nil

	// MARK: Functions

	func set(title: String?) {
		self.title = title
	}
}
