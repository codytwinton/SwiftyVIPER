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

class ___FILEBASENAMEASIDENTIFIER___ViewTests: XCTestCase {

	// MARK: - Variables

	fileprivate var presenter: MockPresenter!
	fileprivate var view: ___FILEBASENAMEASIDENTIFIER___ViewController!

	// MARK: Test Functions

	func testPresenter() {
		view.beginAppearanceTransition(true, animated: false)
		view.endAppearanceTransition()
		XCTAssert(presenter.isViewLoaded)

		view.set(title: "___FILEBASENAMEASIDENTIFIER___")
		XCTAssertEqual(view.title, "___FILEBASENAMEASIDENTIFIER___")

		view.beginAppearanceTransition(false, animated: false)
		view.endAppearanceTransition()
	}

	// MARK: Setup

	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		presenter = MockPresenter()

		// FIXME: - Uncomment this section, if you're using a standard VIPER Module
		/* ---------------

		view = ___FILEBASENAMEASIDENTIFIER___ViewController(presenter: self.presenter)

		--------------- */

		// FIXME: - Uncomment this section, if you're using a Storyboard compatible VIPER Module
		/* ---------------

		let storyboard: UIStoryboard = UIStoryboard(name: <#T##String#>, bundle: Bundle.main)
		view = storyboard.viewController(___FILEBASENAMEASIDENTIFIER___ViewController.self)
		view.presenter = presenter

		--------------- */

		if view == nil {
			fatalError("Uncomment one of the Sections Above")
		}
	}

	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
}

// MARK: - Mock Classes

// MARK: -

fileprivate class MockPresenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol {

	// MARK: Variables

	var isViewLoaded: Bool = false

	// MARK: Functions

	func viewLoaded() {
		isViewLoaded = true
	}
}
