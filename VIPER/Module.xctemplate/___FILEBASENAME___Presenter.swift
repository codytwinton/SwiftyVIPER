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

protocol ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol: ViewPresenterProtocol {
	
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol: class {
	//func setTitle(title: String?)
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Presenter: NSObject {
	
	// MARK: - Constants
	
	let router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol
	let interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol
	
	
	// MARK: Variables
	
	weak var view: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol?
	
	
	// MARK: Inits
	
	init(router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol, interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol) {
		self.router = router
		self.interactor = interactor
		super.init()
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ View to Presenter Protocol

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol {

	func viewLoaded() {
		//interactor.requestTitle()
	}
	
	func viewAppearing() {
		
	}
	
	func viewAppeared() {
		
	}
	
	func viewDisappeared() {
		
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Interactor to Presenter Protocol

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {
	/*
	func setTitle(title: String?) {
		view?.viewTitle(title)
	}
	*/
}
