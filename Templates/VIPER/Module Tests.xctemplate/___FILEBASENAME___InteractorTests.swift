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

@testable import ___PROJECTNAME___

import SwiftyVIPER
import XCTest

// MARK: -

class ___FILEBASENAMEASIDENTIFIER___InteractorTests: XCTestCase {

	// MARK: - Variables

	fileprivate var presenter: MockPresenter?
	fileprivate var interactor: ___FILEBASENAMEASIDENTIFIER___Interactor?

	// MARK: Test Functions

	func testPresenter() {
		interactor?.requestTitle()
		XCTAssertEqual(presenter?.title, "___FILEBASENAMEASIDENTIFIER___")
	}

	// MARK: Setup

    override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		presenter = MockPresenter()

		interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
		interactor?.presenter = presenter
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}

// MARK: - Mock Classes

// MARK: -

private class MockPresenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {
	
	// MARK: Variables

	var title: String? = nil

	// MARK: Functions

	func set(title: String?) {
		self.title = title
	}
}
