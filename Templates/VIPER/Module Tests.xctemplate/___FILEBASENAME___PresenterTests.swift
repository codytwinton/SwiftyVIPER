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

class ___FILEBASENAMEASIDENTIFIER___PresenterTests: XCTestCase {

	// MARK: - Variables

	fileprivate let router = MockRouter()
	fileprivate let interactor = MockInteractor()
	fileprivate let view = MockView()

	fileprivate lazy var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter = {
		let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter(router: self.router, interactor: self.interactor)
		presenter.view = self.view
		return presenter
	}()


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
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}


// MARK: - Mock Classes

// MARK: -

fileprivate class MockRouter: NSObject, RouterProtocol, ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol {

	// MARK: Variables

	var viewController: UIViewController?
}

// MARK: -

fileprivate class MockInteractor: NSObject, ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {

	// MARK: Variables

	var titleRequested: Bool = false


	// MARK: Functions

	func requestTitle() {
		titleRequested = true
	}
}

// MARK: -

fileprivate class MockView: NSObject, ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {

	// MARK: Variables

	var title: String? = nil


	// MARK: Functions

	func set(title: String?) {
		self.title = title
	}
}
