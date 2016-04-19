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

protocol ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol {
	func setupView()
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {

}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Presenter: NSObject {

	var view: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol?
	var interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol?
	var router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol?
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ View to Presenter Protocol

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol {

  func setupView() {

  }
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Interactor to Presenter Protocol

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {

}
