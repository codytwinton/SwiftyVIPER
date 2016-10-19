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


// MARK: Protocols

protocol ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
	//func requestTitle()
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {
	//func setTitle(title: String?)
}


// MARK: -

struct ___FILEBASENAMEASIDENTIFIER___Interactor {
	
	// MARK: - Constants
	
	let presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol
	
	
	// MARK: Inits
	
	init(presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol) {
		self.presenter = presenter
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to Interactor Protocol

extension ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
	/*
	func requestTitle() {
		presenter.setTitle("___FILEBASENAMEASIDENTIFIER___")
	}
	*/
}
