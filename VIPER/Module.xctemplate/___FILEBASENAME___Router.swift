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

// MARK: - Boiler Plate Functionality. Uncomment, if this is your first/root module. Delete, if this is already implemented in another module
/*
protocol RouterProtocol {
	var viewController: UIViewController? { get }
	func present(fromViewController viewController: UIViewController?, modalTransitionStyle: UIModalTransitionStyle, completion: (() -> Void)?)
}
*/
/*
extension RouterProtocol {
	
	func present(fromViewController viewController: UIViewController?, modalTransitionStyle: UIModalTransitionStyle, completion: (() -> Void)?) {
		guard let controller = self.viewController else {return}
		controller.modalTransitionStyle = modalTransitionStyle
		viewController?.presentViewController(controller, animated: true, completion: completion)
	}
}
*/
/*
extension UIStoryboard {
	class func mainStoryboard() -> UIStoryboard {
		return UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
	}
}
*/

// MARK: Protocols


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Router: NSObject {
	
	private lazy var _presenter: ___FILEBASENAMEASIDENTIFIER___Presenter = {
		return ___FILEBASENAMEASIDENTIFIER___Presenter(router: self)
	}()
	
	private lazy var _interactor: ___FILEBASENAMEASIDENTIFIER___Interactor = {
		return ___FILEBASENAMEASIDENTIFIER___Interactor(router: self)
	}()
	
	private lazy var _viewController: ___FILEBASENAMEASIDENTIFIER___ViewController? = {
		let controller = UIStoryboard.mainStoryboard().viewController(___FILEBASENAMEASIDENTIFIER___ViewController)
		controller?.presenter = self._presenter
		return controller
	}()
	
	deinit {
		_viewController?.presenter = nil
	}
}

// MARK: Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: RouterProtocol {
	var viewController: UIViewController? {return _viewController}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol {
	
	var view: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol? {return _viewController}
	
	var interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {return _interactor}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Interactor to Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___InteractorRouterProtocol {
	var presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {return _presenter}
}
