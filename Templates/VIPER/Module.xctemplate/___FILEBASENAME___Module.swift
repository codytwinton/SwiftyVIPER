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

import UIKit

import SwiftyVIPER


// MARK: -

/// Used to initialize the ___FILEBASENAMEASIDENTIFIER___ VIPER module
final class ___FILEBASENAMEASIDENTIFIER___Module {

	// MARK: - Variables

	private(set) lazy var interactor: ___FILEBASENAMEASIDENTIFIER___Interactor = {
		return ___FILEBASENAMEASIDENTIFIER___Interactor()
	}()

	private(set) lazy var router: ___FILEBASENAMEASIDENTIFIER___Router = {
		return ___FILEBASENAMEASIDENTIFIER___Router()
	}()

	private(set) lazy var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter = {
		return ___FILEBASENAMEASIDENTIFIER___Presenter(router: self.router, interactor: self.interactor)
	}()

	private(set) lazy var view: ___FILEBASENAMEASIDENTIFIER___ViewController = {
		return ___FILEBASENAMEASIDENTIFIER___ViewController(presenter: self.presenter)
	}()

	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}

// MARK: - Module Protocol

extension ___FILEBASENAMEASIDENTIFIER___Module: ModuleProtocol {
	var viewController: UIViewController {return view}
}
