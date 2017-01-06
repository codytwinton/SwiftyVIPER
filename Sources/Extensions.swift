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
		- type: The Class Type, which must be a `UIViewController` that conforms to `StoryboardIdentifiable`
	- returns: A Storyboard Instance of Type
	*/
	func viewController<T: UIViewController>(_ type: T.Type) -> T where T: StoryboardIdentifiable {
		guard let vc = instantiateViewController(withIdentifier: type.storyboardID) as? T else {
			fatalError("Couldn't find a View Controller with Identifier \(type.storyboardID)")
		}
		return vc
	}
}

public extension StoryboardIdentifiable where Self: UIViewController {
	/// The Storyboard ID to use for a View Controller
	static var storyboardID: String {
		return String(describing: self)
	}
}

public extension ModuleProtocol {

	func present(from fromVC: UIViewController?, style: UIModalTransitionStyle, completion: CodeBlock? = nil) {
		viewController.modalTransitionStyle = style
		fromVC?.present(viewController, animated: true, completion: completion)
	}

	func push(from navController: UINavigationController?) {
		navController?.pushViewController(viewController, animated: true)
	}
}

public extension PresenterRouterProtocol where Self:RouterProtocol {

	func present(_ view: UIViewController, completion: CodeBlock?) {
		switch viewController {
		case nil:
			completion?()
		case let controller?:
			controller.present(view, animated: true, completion: completion)
		}
	}

	func dismiss(completion: CodeBlock? = nil) {
		switch viewController {
		case nil:
			completion?()
		case let controller?:
			controller.view?.endEditing(true)
			controller.dismiss(animated: true, completion: completion)
		}
	}

	@discardableResult
	func pop() -> UIViewController? {
		return viewController?.navigationController?.popViewController(animated: true)
	}
}

// Allows these functions to be optional
public extension ViewPresenterProtocol {
	func viewAppearing() {}
	func viewAppeared() {}
	func viewDisappeared() {}
}
