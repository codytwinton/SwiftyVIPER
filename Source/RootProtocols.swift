//
//  RootProtocols.swift
//  Credntia
//
//  Created by Cody Winton on 9/21/16.
//  Copyright © 2016 Credntia LLC. All rights reserved.
//

import UIKit


public typealias CompletionBlock = () -> Void

// MARK: Protocols

public protocol ModuleProtocol: class {
	var viewController: UIViewController? { get }
	func present(from fromVC: UIViewController?, style: UIModalTransitionStyle, completion: CompletionBlock?)
	func push(from navController: UINavigationController?)
}

protocol RouterProtocol: class {
	var viewController: UIViewController? { get }
}

protocol PresenterRouterProtocol: class {
	func pop() -> UIViewController?
	func dismiss(completion: CompletionBlock?)
}


// MARK: Extensions

public extension ModuleProtocol {
	
	func present(from fromVC: UIViewController?, style: UIModalTransitionStyle, completion: CompletionBlock? = nil) {
		guard let viewController = viewController else {completion?(); return}
		viewController.modalTransitionStyle = style
		fromVC?.present(viewController, animated: true, completion: completion)
	}
	
	func push(from navController: UINavigationController?) {
		guard let viewController = viewController else {return}
		navController?.pushViewController(viewController, animated: true)
	}
}

extension PresenterRouterProtocol where Self:RouterProtocol {
	
	@discardableResult
	func pop() -> UIViewController? {
		return viewController?.navigationController?.popViewController(animated: true)
	}
	
	func dismiss(completion: CompletionBlock? = nil) {
		guard let viewController = viewController else {completion?(); return}
		viewController.view?.endEditing(true)
		viewController.dismiss(animated: true, completion: completion)
	}
}

public protocol ViewPresenterProtocol {
	func viewLoaded()
	func viewAppearing()
	func viewAppeared()
	func viewDisappeared()
}

public extension ViewPresenterProtocol {
	func viewLoaded() {}
	func viewAppearing() {}
	func viewAppeared() {}
	func viewDisappeared() {}
}
