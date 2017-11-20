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

import SwiftyVIPER
import UIKit

// MARK: -

/// Used to initialize the ___FILEBASENAMEASIDENTIFIER___ VIPER module
final class ___FILEBASENAMEASIDENTIFIER___Module: ModuleProtocol {

	// MARK: - Variables

	private(set) lazy var interactor: ___FILEBASENAMEASIDENTIFIER___Interactor = {
		___FILEBASENAMEASIDENTIFIER___Interactor()
	}()

	private(set) lazy var router: ___FILEBASENAMEASIDENTIFIER___Router = {
		___FILEBASENAMEASIDENTIFIER___Router()
	}()

	private(set) lazy var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter = {
		___FILEBASENAMEASIDENTIFIER___Presenter(router: self.router, interactor: self.interactor)
	}()

	private(set) lazy var view: ___FILEBASENAMEASIDENTIFIER___ViewController = {
		___FILEBASENAMEASIDENTIFIER___ViewController(presenter: self.presenter)
	}()

	// MARK: - Module Protocol Variables

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
