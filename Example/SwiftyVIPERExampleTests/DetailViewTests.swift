//
//  DetailViewControllerTests.swift
//  Project: SwiftyVIPERExample
//
//  Module: Detail
//
//  By Cody Winton 11/9/16
//  codeRed 2016
//

// MARK: Imports

import XCTest

@testable import SwiftyVIPERExample

import SwiftyVIPER


// MARK: -

class DetailViewTests: XCTestCase {
	
	// MARK: - Variables
	
	fileprivate var presenter: MockPresenter!
	fileprivate var view: DetailViewController!
	
	
	// MARK: Test Functions
	
	func testPresenter() {
		view.beginAppearanceTransition(true, animated: false)
		view.endAppearanceTransition()
		XCTAssert(presenter.isViewLoaded)
		
		view.closeSelected()
		XCTAssert(presenter.closeCalled)
		
		view.set(title: "Detail")
		XCTAssertEqual(view.titleLabel?.text, "Detail")
	}
	
	
	// MARK: Setup
	
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		
		presenter = MockPresenter()
		
		let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
		view = storyboard.viewController(DetailViewController.self)
		view.presenter = presenter
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
}


// MARK: - Mock Classes

// MARK: -

fileprivate class MockPresenter: NSObject, DetailViewPresenterProtocol {
	
	// MARK: Variables
	
	var isViewLoaded: Bool = false
	
	var closeCalled: Bool = false
	
	
	// MARK: Functions
	
	func viewLoaded() {
		isViewLoaded = true
	}
	
	func closeSelected() {
		closeCalled = true
	}
}
