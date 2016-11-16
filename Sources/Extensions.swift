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
		- type: The Class Type, which must be a `UIViewController` that conforms to `ViewStoryboardProtocol`
	- returns: A Storyboard Instance of Type
	*/
	func viewController<T>(_ type: T.Type) -> T? where T: UIViewController, T: ViewStoryboardProtocol {
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
	
	func present(_ view: UIViewController, completion: CompletionBlock?) {
		guard let viewController = viewController else {completion?(); return}
		viewController.present(view, animated: true, completion: completion)
	}
	
	func dismiss(completion: CompletionBlock? = nil) {
		guard let viewController = viewController else {completion?(); return}
		viewController.view?.endEditing(true)
		viewController.dismiss(animated: true, completion: completion)
	}
	
	@discardableResult
	func pop() -> UIViewController? {
		return viewController?.navigationController?.popViewController(animated: true)
	}
}

// Allows these functions to be optional
public extension ViewPresenterProtocol {
	func viewLoaded() {}
	func viewAppearing() {}
	func viewAppeared() {}
	func viewDisappeared() {}
}
