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

import Foundation
import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `___FILEBASENAMEASIDENTIFIER___` and referenced by `___FILEBASENAMEASIDENTIFIER___Presenter`
protocol ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
	/// Requests the title for the presenter
	func requestTitle()
}

// MARK: -

/// The Interactor for the ___FILEBASENAMEASIDENTIFIER___ module
final class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {

	// MARK: - Variables

	weak var presenter: ___FILEBASENAMEASIDENTIFIER___PresenterProtocol?

	// MARK: - ___FILEBASENAMEASIDENTIFIER___ Presenter to Interactor Protocol

	func requestTitle() {
		presenter?.set(title: "___FILEBASENAMEASIDENTIFIER___")
	}
}
