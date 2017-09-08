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
import SwiftyVIPER
import UIKit

// MARK: -

/// Used to initialize the Test VIPER module
class MockModule: ModuleProtocol {

	// MARK: - Variables

	private(set) lazy var router: MockRouter = {
		MockRouter()
	}()

	private(set) lazy var view: UIViewController = {
		UIViewController()
	}()

	var viewController: UIViewController {
		return view
	}

	init() {
		router.viewController = view
	}
}

// MARK: -

/// The Router for the Test module
class MockRouter: RouterProtocol, PresenterRouterProtocol {

	// MARK: - Variables

	weak var viewController: UIViewController?
}

// MARK: - Mock Classes

// MARK: -

class MockPresenter: ViewPresenterProtocol {
	func viewLoaded() {}
}

// MARK: -

class MockViewController: UIViewController, StoryboardIdentifiable {}
