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

	private var presenter: MockPresenter?
	private var view: ___VARIABLE_productName___ViewController?

	// MARK: Test Functions

	func testPresenter() {
		view?.beginAppearanceTransition(true, animated: false)
		view?.endAppearanceTransition()
		XCTAssertEqual(presenter?.isViewLoaded, true)

		view?.set(title: "___VARIABLE_productName___")
		XCTAssertEqual(view?.title, "___VARIABLE_productName___")

		view?.beginAppearanceTransition(false, animated: false)
		view?.endAppearanceTransition()
	}

	// MARK: Setup

	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.

		let presenter = MockPresenter()
		self.presenter = presenter

		// FIXME: - Uncomment this section, if you're using a standard VIPER Module
		/* ---------------

		view = ___VARIABLE_productName___ViewController(presenter: presenter)

		--------------- */

		// FIXME: - Uncomment this section, if you're using a Storyboard compatible VIPER Module
		/* ---------------

		let storyboard: UIStoryboard = UIStoryboard(name: <#T##String#>, bundle: Bundle.main)
		view = storyboard.viewController(___VARIABLE_productName___ViewController.self)
		view.presenter = presenter

		--------------- */

		guard view == nil else { return }
		fatalError("Uncomment one of the Sections Above")
	}

	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
}

// MARK: - Mock Classes

// MARK: -

private class MockPresenter: ___VARIABLE_productName___ViewPresenterProtocol {

	// MARK: Variables

	var isViewLoaded: Bool = false

	// MARK: Functions

	func viewLoaded() {
		isViewLoaded = true
	}
}
