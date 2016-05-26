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
/*
protocol ViewPresenterProtocol {
	func viewLoaded()
	func viewAppeared()
}
*/

/*
extension UIStoryboard {
	
	/**
	Returns the view controller of a perticular type
	
	- parameters:
		- type: The Class Type, which must be a UIViewController that conforms to `StoryboardProtocol`
	- returns: The first view controller
	*/
	func viewController<T where T: UIViewController, T: StoryboardProtocol>(type: T.Type) -> T? {
		return self.instantiateViewControllerWithIdentifier(type.storyboardID) as? T
	}
}

protocol StoryboardProtocol {
	static var storyboardID: String { get }
}
*/

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
}

extension ___FILEBASENAMEASIDENTIFIER___ViewController: StoryboardProtocol {
	static var storyboardID: String { return "___FILEBASENAMEASIDENTIFIER___"} // Add in Storyboard ID
}


// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to View Protocol

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {
	
	func showSomething() {
		print("Recieve Data from Presenter")
	}
}
