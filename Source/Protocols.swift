//
//  Protocols.swift
//  Credntia
//
//  Created by Cody Winton on 9/21/16.
//  Copyright © 2016 Credntia LLC. All rights reserved.
//

import UIKit

/// A standard block of code
public typealias CompletionBlock = () -> Void


// MARK: Protocols

/** This Protocol gives some basic functionality to a Module

- note: This Protocol should be conformed to by a Module object
- note: A module should contain:
- `view` the view object, normally a view controller
- `presenter` the presenter object
- `router` the router object
- `interactor` the interactor object
*/
public protocol ModuleProtocol: class {
	/** The View Controller owned by the Module
	- important: Should be a strong reference
	*/
	var viewController: UIViewController { get }
	
	/** Should present the View Controller owned by the Module
	- parameters:
		- fromVC: The view controller to present the module from
		- style: The modal transition style to use
		- completion: The code block to call when the transition completes
	*/
	func present(from fromVC: UIViewController?, style: UIModalTransitionStyle, completion: CompletionBlock?)
	
	/** Should push the View Controller owned by the Module
	- parameters:
		- navController: The navigation controller to push the module on
	*/
	func push(from navController: UINavigationController?)
}

/** This Protocol gives some basic functionality to a Router
- note: This Protocol should be conformed to by a Router object
*/
public protocol RouterProtocol: class {
	/** The View Controller referenced by the Router
	- important: Should be a weak reference
	*/
	var viewController: UIViewController? { get }
}

/** This Protocol gives some basic functionality to a Router that can be called by a Presenter
- note: This Protocol should be conformed to by new Presenter to Router Protocol
- note: The Presenter to Router protocol should be conformed to by a Router and referenced by the Presenter
*/
public protocol PresenterRouterProtocol: class {
	/** Should present a view object from a Presenter
	- note: This should be used to present a simple view controller, like a `UIAlertController`.
	- note: A new module should be initialized and presented directly from the Router object, not a Presenter
	- parameters:
		- view: The view controller to present
		- completion: The code block to call when the transition completes
	*/
	func present(_ view: UIViewController, completion: CompletionBlock?)
	
	/** Should dismiss a Module that was presented modally
	- parameters:
		- completion: The code block to call when the transition completes
	*/
	func dismiss(completion: CompletionBlock?)
	
	/** Should pop a Module that was pushed
	- returns: Should return the view controller that was popped
	*/
	@discardableResult func pop() -> UIViewController?
}

/** This Protocol gives some basic functionality to a Presenter that can be called by a View
- note: This Protocol should be conformed to by new View to Presenter Protocol
- note: The View to Presenter protocol should be conformed to by a Presenter and referenced by the View
*/
public protocol ViewPresenterProtocol {
	/// Should call when the View is loaded
	func viewLoaded()
	/// Should call when the View is appearing
	func viewAppearing()
	/// Should call when the View has appeared
	func viewAppeared()
	/// Should call when the View has disappeared
	func viewDisappeared()
}

/** This Protocol is used to initialize a View Controller via. Storyboard
*/
public protocol ViewStoryboardProtocol: class {
	/// The Storyboard ID to use for a View Controller
	static var storyboardID: String { get }
}
