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

protocol ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {
	//func viewTitle(title: String?)
}

protocol ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol: PresenterRouterProtocol {
	var view: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol? { get }
	var interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol { get }
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Presenter: NSObject {

	var router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol
	
	var view: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol? {
		return router.view
	}
	
	var interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {
		return router.interactor
	}
	
	init(router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol) {
		self.router = router
		super.init()
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ View to Presenter Protocol

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol {

	func viewLoaded() {
		//interactor.requestTitle()
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