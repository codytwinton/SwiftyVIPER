//
//  RootModule.swift
//  Project: SwiftyVIPER
//
//  Module: Root
//
//  By Cody Winton 11/5/16
//  codeRed 2016
//

// MARK: Imports

import SwiftyVIPER
import UIKit

// MARK: -

final class RootModule: ModuleProtocol {

	// MARK: - Variables

	private(set) lazy var interactor: RootInteractor = {
		RootInteractor()
	}()

	private(set) lazy var router: RootRouter = {
		RootRouter()
	}()

	private(set) lazy var presenter: RootPresenter = {
		RootPresenter(router: self.router, interactor: self.interactor)
	}()

	private(set) lazy var view: RootViewController = {
		RootViewController(presenter: self.presenter)
	}()

	// MARK: Module Protocol Variables

	var viewController: UIViewController {
		return view
	}

	// MARK: Inits

	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}
