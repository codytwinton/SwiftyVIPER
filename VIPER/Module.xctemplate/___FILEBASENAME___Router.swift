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
import UIKit

// MARK: - Boiler Plate Functionality. Uncomment, if this is your first/root module. Delete, if this is already implemented in another module
/*
protocol RouterProtocol {
	var viewController: UIViewController? { get }
	func present(fromViewController viewController: UIViewController?, modalTransitionStyle: UIModalTransitionStyle, completion: (() -> Void)?)
}
*/

/*
import SafariServices

protocol PresenterRouterProtocol: RouterProtocol {
	func presentAlertController(alertController: UIAlertController, completion: (() -> Void)?)
	func openURL(url: NSURL?, completion: (() -> Void)?)
}

extension PresenterRouterProtocol {
	func presentAlertController(alertController: UIAlertController, completion: (() -> Void)?) {
		self.viewController?.presentViewController(alertController, animated: true, completion: completion)
	}
	
	func openURL(url: NSURL?, completion: (() -> Void)?) {
		
		guard let url = url else {completion?(); return}
		
		guard #available(iOS 9.0, *) else {
			UIApplication.sharedApplication().openURL(url)
			completion?()
			return
		}
		
		let SVC = SFSafariViewController(URL: url)
		self.viewController?.presentViewController(SVC, animated: true, completion: completion)
	}
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

// MARK: Protocols


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___Router: NSObject {
	
	// MARK: - Variables
	
	private lazy var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter = {
		return ___FILEBASENAMEASIDENTIFIER___Presenter(router: self)
	}()
	
	private lazy var interactor: ___FILEBASENAMEASIDENTIFIER___Interactor = {
		return ___FILEBASENAMEASIDENTIFIER___Interactor(router: self)
	}()
	
	private lazy var view: ___FILEBASENAMEASIDENTIFIER___ViewController = {
		return ___FILEBASENAMEASIDENTIFIER___ViewController(presenter: self.presenter)
	}()
}

// MARK: Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: RouterProtocol {
	var viewController: UIViewController? {return view}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol {
	var presenterView: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {return view}
	var presenterInteractor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol {return interactor}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Interactor to Router Protocol

extension ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___InteractorRouterProtocol {
	var interactorPresenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {return presenter}
}
