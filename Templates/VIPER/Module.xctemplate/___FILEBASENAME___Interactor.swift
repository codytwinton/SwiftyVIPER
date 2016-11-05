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

protocol ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
	func requestTitle()
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Interactor: NSObject {

	// MARK: - Variables

	weak var presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol?
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___ Presenter to Interactor Protocol

extension ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {

	func requestTitle() {
		presenter?.set(title: "___FILEBASENAMEASIDENTIFIER___")
	}
}
