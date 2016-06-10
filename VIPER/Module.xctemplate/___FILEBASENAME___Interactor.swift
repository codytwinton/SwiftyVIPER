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
	func requestTitle()
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {
	func setTitle(title: String?)
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorRouterProtocol {
	var presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol { get }
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Interactor: NSObject {
	
	var router: ___FILEBASENAMEASIDENTIFIER___InteractorRouterProtocol
	
	var presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {
		return router.presenter
	}
	
	init(router: ___FILEBASENAMEASIDENTIFIER___InteractorRouterProtocol) {
		self.router = router
		super.init()
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to Interactor Protocol

extension ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
	
	func requestTitle() {
		presenter.setTitle("___FILEBASENAMEASIDENTIFIER___")
	}
}
