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

import UIKit


// MARK: Protocols

protocol ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol {
	func setupView()
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {

	var presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
		
		presenter?.setupView()
    }
}


// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to View Protocol

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {
	
	func showSomething() {
		print("Recieve Data from Presenter")
	}
}
