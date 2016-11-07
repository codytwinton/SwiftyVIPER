//
//  DetailInteractorTests.swift
//  SwiftyVIPER
//
//  Created by Cody Winton on 11/7/16.
//  Copyright © 2016 codeRed. All rights reserved.
//

// MARK: Imports

import XCTest

@testable import SwiftyVIPERExample

import SwiftyVIPER


// MARK: -

class DetailViewTests: XCTestCase {
	
	// MARK: - Variables
	
	fileprivate let presenter = MockPresenter()
	
	fileprivate lazy var view: DetailViewController = {
		return DetailViewController(presenter: self.presenter)
	}()
	
	
	// MARK: Test Functions
	
	func testPresenter() {
		view.beginAppearanceTransition(true, animated: false)
		view.endAppearanceTransition()
		XCTAssert(presenter.isViewLoaded)
		XCTAssert(presenter.isViewAppearing)
		XCTAssert(presenter.isViewAppeared)
		
		view.closeSelected()
		XCTAssert(presenter.closeCalled)
		
		view.set(title: "Detail")
		XCTAssertEqual(view.titleLabel.text, "Detail")
		
		view.beginAppearanceTransition(false, animated: false)
		view.endAppearanceTransition()
		XCTAssert(presenter.isViewDisappeared)
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

fileprivate class MockPresenter: NSObject, DetailViewPresenterProtocol {
	
	// MARK: Variables
	
	var isViewLoaded: Bool = false
	var isViewAppearing: Bool = false
	var isViewAppeared: Bool = false
	var isViewDisappeared: Bool = false
	
	var closeCalled: Bool = false
	
	
	// MARK: Functions
	
	func viewLoaded() {
		isViewLoaded = true
	}
	
	func viewAppearing() {
		isViewAppearing = true
	}
	
	func viewAppeared() {
		isViewAppeared = true
	}
	
	func viewDisappeared() {
		isViewDisappeared = true
	}
	
	func closeSelected() {
		closeCalled = true
	}
}
