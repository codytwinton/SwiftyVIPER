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

protocol ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {
	func showSomething()
}

protocol ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol {
	
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Presenter: NSObject {

	var view: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol?
	var router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol?
	//var interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol?
	
	init(view: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol?, router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol?) {
		self.view = view
		self.router = router
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ View to Presenter Protocol

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol {

	func viewLoaded() {
		print("Handle View Setup")
		view?.showSomething()
	}
	
	func viewAppeared() {
		print("Handle View Appeared")
		view?.showSomething()
	}
}