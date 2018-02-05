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

import UIKit

import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `___FILEBASENAMEASIDENTIFIER___` and referenced by `___VARIABLE_productName___ViewController`
protocol ___VARIABLE_productName___ViewPresenterProtocol: ViewPresenterProtocol {

}

/// Should be conformed to by the `___FILEBASENAMEASIDENTIFIER___` and referenced by `___VARIABLE_productName___Interactor`
protocol ___VARIABLE_productName___InteractorPresenterProtocol: class {
	/** Sets the title for the presenter
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}

// MARK: -

/// The Presenter for the ___VARIABLE_productName___ module
final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___ViewPresenterProtocol, ___VARIABLE_productName___InteractorPresenterProtocol {

	// MARK: - Constants

	let router: ___FILEBASENAMEASIDENTIFIER___RouterProtocol
	let interactor: ___FILEBASENAMEASIDENTIFIER___InteractorProtocol

	// MARK: Variables

	weak var view: ___FILEBASENAMEASIDENTIFIER___ViewProtocol?

	// MARK: Inits

	init(router: ___FILEBASENAMEASIDENTIFIER___RouterProtocol, interactor: ___FILEBASENAMEASIDENTIFIER___InteractorProtocol) {
		self.router = router
		self.interactor = interactor
	}

	// MARK: - ___VARIABLE_productName___ View to Presenter Protocol

	func viewLoaded() {
		interactor.requestTitle()
	}

	// MARK: - ___VARIABLE_productName___ Interactor to Presenter Protocol

	func set(title: String?) {
		view?.set(title: title)
	}
}
