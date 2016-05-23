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

/*
protocol RouterProtocol {
	func present(fromViewController viewController: UIViewController, modalTransitionStyle: UIModalTransitionStyle)
}
*/


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Router: NSObject {
	
	private var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter?
	private var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController?
	
	private var storyboard: UIStoryboard {
		return UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
	}
	
	override init() {
		super.init()
		
		viewController = storyboard.instantiateViewControllerWithIdentifier("___FILEBASENAMEASIDENTIFIER___") as? ___FILEBASENAMEASIDENTIFIER___ViewController
		presenter = ___FILEBASENAMEASIDENTIFIER___Presenter(view: viewController, router: self)
		
		viewController?.presenter = presenter
	}
	
	deinit {
		viewController?.presenter = nil
		
		presenter?.router = nil
		presenter?.view = nil
		//presenter?.interactor = nil
	}
}

// MARK: Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: RouterProtocol {
	
	func present(fromViewController viewController: UIViewController, modalTransitionStyle: UIModalTransitionStyle) {
		guard let controller = self.viewController else {return}
		controller.modalTransitionStyle = modalTransitionStyle
		viewController.presentViewController(controller, animated: true, completion: nil)
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol {

}
