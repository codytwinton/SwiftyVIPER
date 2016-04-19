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

protocol RouterProtocol {
	func present(fromViewController viewController: UIViewController)
}

protocol ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol {

}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Router: NSObject {
	
	private var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter?
	private var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController?
	
	override init() {
		super.init()
		
		viewController = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("___FILEBASENAMEASIDENTIFIER___") as? ___FILEBASENAMEASIDENTIFIER___ViewController
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
	
	func present(fromViewController viewController: UIViewController) {
		guard let controller = self.viewController else {return}
		viewController.presentViewController(controller, animated: true, completion: nil)
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol {

}
