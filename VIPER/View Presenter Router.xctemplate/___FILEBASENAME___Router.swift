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
	func present(fromViewController viewController: UIViewController?, modalTransitionStyle: UIModalTransitionStyle, completion: (() -> Void)?)
}
*/


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Router: NSObject {
	
	private var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter?
	//private var interactor: ___FILEBASENAMEASIDENTIFIER___Interactor
	private var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController?
	
	private var storyboard: UIStoryboard {
		return UIStoryboard.mainStoryboard()
	}
	
	override init() {
		super.init()
		
		viewController = storyboard.viewController(___FILEBASENAMEASIDENTIFIER___ViewController)
		
		let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter(view: viewController, router: self)
		viewController?.presenter = presenter
		
		//interactor = ___FILEBASENAMEASIDENTIFIER___Interactor(presenter: presenter)
		//presenter.interactor = interactor
		
		self.presenter = presenter
	}
	
	deinit {
		viewController?.presenter = nil
		
		presenter?.view = nil
		//presenter?.interactor = nil
	}
}

// MARK: Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: RouterProtocol {
	
	func present(fromViewController viewController: UIViewController?, modalTransitionStyle: UIModalTransitionStyle, completion: (() -> Void)?) {
		guard let controller = self.viewController else {return}
		controller.modalTransitionStyle = modalTransitionStyle
		viewController?.presentViewController(controller, animated: true, completion: completion)
	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol {

}
