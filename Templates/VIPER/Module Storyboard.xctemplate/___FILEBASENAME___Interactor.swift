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

/// Should be conformed to by the `___FILEBASENAMEASIDENTIFIER___` and referenced by `___VARIABLE_productName___Presenter`
protocol ___VARIABLE_productName___PresenterInteractorProtocol {
	/// Requests the title for the presenter
	func requestTitle()
}

// MARK: -

/// The Interactor for the ___VARIABLE_productName___ module
final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___PresenterInteractorProtocol {

	// MARK: - Variables

	weak var presenter: ___FILEBASENAMEASIDENTIFIER___PresenterProtocol?

	// MARK: - ___VARIABLE_productName___ Presenter to Interactor Protocol

	func requestTitle() {
		presenter?.set(title: "___VARIABLE_productName___")
	}
}
