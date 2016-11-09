//
//  Extensions.swift
//  SwiftyVIPER
//
//  Created by Cody Winton on 11/8/16.
//  Copyright © 2016 codeRed. All rights reserved.
//

import UIKit


// MARK: Extensions

public extension UIStoryboard {
	
	/**
	Returns the view controller of a perticular type
	
	- parameters:
		- type: The Class Type, which must be a UIViewController that conforms to `StoryboardProtocol`
	- returns: The first view controller
	*/
	func viewController<T>(_ type: T.Type) -> T? where T: UIViewController, T: StoryboardProtocol {
		return instantiateViewController(withIdentifier: type.storyboardID) as? T
	}
}

public extension ModuleProtocol {
	
	func present(from fromVC: UIViewController?, style: UIModalTransitionStyle, completion: CompletionBlock? = nil) {
		viewController.modalTransitionStyle = style
		fromVC?.present(viewController, animated: true, completion: completion)
	}
	
	func push(from navController: UINavigationController?) {
		navController?.pushViewController(viewController, animated: true)
	}
}

public extension PresenterRouterProtocol where Self:RouterProtocol {
	
	@discardableResult
	func pop() -> UIViewController? {
		return viewController?.navigationController?.popViewController(animated: true)
	}
	
	func dismiss(completion: CompletionBlock? = nil) {
		guard let viewController = viewController else {completion?(); return}
		viewController.view?.endEditing(true)
		viewController.dismiss(animated: true, completion: completion)
	}
	
	func present(_ view: UIViewController, completion: CompletionBlock?) {
		guard let viewController = viewController else {completion?(); return}
		viewController.present(view, animated: true, completion: completion)
	}
}

public extension ViewPresenterProtocol {
	func viewLoaded() {}
	func viewAppearing() {}
	func viewAppeared() {}
	func viewDisappeared() {}
}
