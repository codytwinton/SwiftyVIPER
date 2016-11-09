//
//  DetailPresenterTests.swift
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

class DetailPresenterTests: XCTestCase {
	
	// MARK: - Variables
	
	fileprivate var router: MockRouter!
	fileprivate var interactor: MockInteractor!
	fileprivate var view: MockView!
	
	fileprivate var presenter: DetailPresenter!
	
	
	// MARK: Test Functions
	
	func testInteractor() {
		presenter.viewLoaded()
		presenter.viewAppearing()
		presenter.viewAppeared()
		presenter.viewDisappeared()
		XCTAssert(interactor.titleRequested)
	}
	
	func testRouter() {
		presenter.closeSelected()
		XCTAssert(router.shouldDismiss)
	}
	
	func testView() {
		presenter.set(title: "Detail")
		XCTAssertEqual(view.title, "Detail")
	}
	
	
	// MARK: Setup
	
	override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		
		router = MockRouter()
		interactor = MockInteractor()
		view = MockView()
		
		presenter = DetailPresenter(router: self.router, interactor: self.interactor)
		presenter.view = self.view
    }
	
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}


// MARK: - Mock Classes

// MARK: -

fileprivate class MockRouter: NSObject, RouterProtocol, DetailPresenterRouterProtocol {
	
	// MARK: Variables
	
	var viewController: UIViewController?
	var shouldDismiss: Bool = false
	
	
	// MARK: Functions
	
	func dismiss(completion: CompletionBlock?) {
		shouldDismiss = true
		completion?()
	}
}

// MARK: -

fileprivate class MockInteractor: NSObject, DetailPresenterInteractorProtocol {
	
	// MARK: Variables
	
	var titleRequested: Bool = false
	
	
	// MARK: Functions
	
	func requestTitle() {
		titleRequested = true
	}
}

// MARK: -

fileprivate class MockView: NSObject, DetailPresenterViewProtocol {
	
	// MARK: Variables
	
	var title: String? = nil
	
	
	// MARK: Functions
	
	func set(title: String?) {
		self.title = title
	}
}
