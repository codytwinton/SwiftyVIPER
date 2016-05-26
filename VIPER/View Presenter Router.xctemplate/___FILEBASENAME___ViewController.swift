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

// MARK: -


// Boiler plate, that should be already present in your project, unless this is your first module
/*
protocol ViewPresenterProtocol {
	func viewLoaded()
	func viewAppeared()
}
*/


//private var _storyboard = UIStoryboard(name: "MainStoryboard", bundle: NSBundle.mainBundle())

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

	class func mainStoryboard() -> UIStoryboard {
		return _storyboard
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
