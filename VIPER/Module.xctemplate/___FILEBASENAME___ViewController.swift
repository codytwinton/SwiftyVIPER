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

import UIKit

// MARK: - Boiler Plate Functionality. Uncomment, if this is your first/root module. Delete, if this is already implemented in another module
/*
protocol ViewPresenterProtocol {
	
	/**
	Designed to be called in the Presenter
	Designed for setting up the View with data from the Interactors/Entities
	Should call back on View, for example:
	
	`self.view setExampleString:self.exampleString`
	*/
	func viewLoaded()
	func viewAppeared()
	func viewDisappeared()
}

extension ViewPresenterProtocol {
	func viewLoaded() {}
	func viewAppeared() {}
	func viewDisappeared() {}
}
*/

/*
protocol StoryboardProtocol {
	static var storyboardID: String { get }
}
*/

// MARK: Protocols

protocol ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol: ViewPresenterProtocol {
	
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {

	var presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
		
		presenter?.viewLoaded()
    }
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		
		presenter?.viewAppeared()
	}
	
	override func viewDidDisappear(animated: Bool) {
		super.viewDidDisappear(animated)
		
		presenter?.viewDisappeared()
	}
}

extension ___FILEBASENAMEASIDENTIFIER___ViewController: StoryboardProtocol {
	static var storyboardID: String { return "___FILEBASENAMEASIDENTIFIER___"} // Add in Storyboard ID
}


// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to View Protocol

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {
	
	func viewTitle(title: String?) {
		print("title: \(title)")
		self.title = title
	}
}
