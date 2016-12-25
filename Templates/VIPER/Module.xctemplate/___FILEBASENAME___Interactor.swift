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

import Foundation

import SwiftyVIPER


// MARK: Protocols

/// Should be conformed to by the `___FILEBASENAMEASIDENTIFIER___Interactor` and referenced by `___FILEBASENAMEASIDENTIFIER___Presenter`
protocol ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
	/// Requests the title for the presenter
	func requestTitle()
}


// MARK: -

/// The Interactor for the ___FILEBASENAMEASIDENTIFIER___ module
final class ___FILEBASENAMEASIDENTIFIER___Interactor {

	// MARK: - Variables

	weak var presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol?
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___ Presenter to Interactor Protocol

extension ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {

	func requestTitle() {
		presenter?.set(title: "___FILEBASENAMEASIDENTIFIER___")
	}
}
