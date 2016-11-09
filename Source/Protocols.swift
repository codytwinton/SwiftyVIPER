//
//  Protocols.swift
//  Credntia
//
//  Created by Cody Winton on 9/21/16.
//  Copyright © 2016 Credntia LLC. All rights reserved.
//

import UIKit


public typealias CompletionBlock = () -> Void


// MARK: Protocols

public protocol ModuleProtocol: class {
	var viewController: UIViewController { get }
	func present(from fromVC: UIViewController?, style: UIModalTransitionStyle, completion: CompletionBlock?)
	func push(from navController: UINavigationController?)
}

public protocol RouterProtocol: class {
	var viewController: UIViewController? { get }
}

public protocol PresenterRouterProtocol: class {
	@discardableResult func pop() -> UIViewController?
	func dismiss(completion: CompletionBlock?)
	func present(_ view: UIViewController, completion: CompletionBlock?)
}

public protocol ViewStoryboardProtocol: class {
	static var storyboardID: String { get }
}

public protocol ViewPresenterProtocol {
	func viewLoaded()
	func viewAppearing()
	func viewAppeared()
	func viewDisappeared()
}
