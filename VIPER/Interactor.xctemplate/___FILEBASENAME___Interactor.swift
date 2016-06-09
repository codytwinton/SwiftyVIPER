//
//  ___FILENAME___
//  Project: ___PROJECTNAME___
//
//  Module: ___VARIABLE_viperModuleName___
//  Description: ___VARIABLE_viperModuleDescription___
//
//  By ___FULLUSERNAME___ ___DATE___
//  ___ORGANIZATIONNAME___ ___YEAR___
//

// MARK: Imports

import Foundation


// MARK: Protocols

protocol ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
	func handleEntities()
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {
	func entitiesHandled()
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Interactor: NSObject {
	var presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol
	
	init(presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol) {
		self.presenter = presenter
		super.init()
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to Interactor Protocol

extension ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
	
	func handleEntities() {
		presenter.entitiesHandled()
	}
}
