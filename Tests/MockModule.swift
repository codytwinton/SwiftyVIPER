//
//  MockModule.swift
//  Project: SwiftyVIPER
//
//  Module: Test
//
//  By Cody Winton 11/7/16
//  codeRed 2016
//

// MARK: Imports

import Foundation
import UIKit

import SwiftyVIPER


// MARK: -

/// Used to initialize the Test VIPER module
class MockModule: ModuleProtocol {

	// MARK: - Variables
	
	private(set) lazy var router: MockRouter = {
		return MockRouter()
	}()

	private(set) lazy var view: UIViewController = {
		return UIViewController()
	}()
	
	var viewController: UIViewController {return view}

	init() {
		router.viewController = view
	}
}


// MARK: -

/// The Router for the Test module
class MockRouter: NSObject, RouterProtocol, PresenterRouterProtocol {
	
	// MARK: - Variables
	
	weak var viewController: UIViewController?
}


// MARK: - Mock Classes

// MARK: -

class MockPresenter: NSObject, ViewPresenterProtocol {
	func viewLoaded() {}
}

// MARK: -

class MockViewController: UIViewController, StoryboardIdentifiable {}
