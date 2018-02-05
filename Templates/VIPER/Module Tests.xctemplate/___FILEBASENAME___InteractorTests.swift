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

@testable import ___PROJECTNAME___

import SwiftyVIPER
import XCTest

// MARK: -

class ___FILEBASENAMEASIDENTIFIER___: XCTestCase {

	// MARK: - Variables

	private var presenter: MockPresenter?
	private var interactor: ___VARIABLE_productName___Interactor?

	// MARK: Test Functions

	func testPresenter() {
		interactor?.requestTitle()
		XCTAssertEqual(presenter?.title, "___VARIABLE_productName___")
	}

	// MARK: Setup

    override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		presenter = MockPresenter()

		interactor = ___VARIABLE_productName___Interactor()
		interactor?.presenter = presenter
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}

// MARK: - Mock Classes

// MARK: -

private class MockPresenter: ___VARIABLE_productName___InteractorPresenterProtocol {

	// MARK: Variables

	var title: String?

	// MARK: Functions

	func set(title: String?) {
		self.title = title
	}
}
