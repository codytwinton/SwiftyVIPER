//
//  RootInteractorTests.swift
//  SwiftyVIPER
//
//  Created by Cody Winton on 11/7/16.
//  Copyright © 2016 codeRed. All rights reserved.
//

// MARK: Imports

import XCTest

@testable import SwiftyVIPER

import SwiftyVIPER


// MARK: -

class RootPresenterTests: XCTestCase {
	
	// MARK: - Variables
	
	fileprivate let router = MockRouter()
	fileprivate let interactor = MockInteractor()
	fileprivate let view = MockView()
	
	fileprivate lazy var presenter: RootPresenter = {
		let presenter = RootPresenter(router: self.router, interactor: self.interactor)
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
		presenter.set(title: "Root")
		XCTAssertEqual(view.title, "Root")
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

fileprivate class MockRouter: NSObject, RouterProtocol, RootPresenterRouterProtocol {
	
	// MARK: Variables
	
	var viewController: UIViewController?
}

// MARK: -

fileprivate class MockInteractor: NSObject, RootPresenterInteractorProtocol {
	
	// MARK: Variables
	
	var titleRequested: Bool = false
	
	
	// MARK: Functions
	
	func requestTitle() {
		titleRequested = true
	}
}

// MARK: -

fileprivate class MockView: NSObject, RootPresenterViewProtocol {
	
	// MARK: Variables
	
	var title: String? = nil
	
	
	// MARK: Functions
	
	func set(title: String?) {
		self.title = title
	}
}
