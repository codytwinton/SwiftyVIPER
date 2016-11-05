//
//  RootRouter.swift
//  Project: SwiftyVIPER
//
//  Module: Root
//
//  By Cody Winton 11/4/16
//  codeRed 2016
//

// MARK: Imports

import Foundation
import UIKit

// MARK: Protocols

protocol RootPresenterRouterProtocol: PresenterRouterProtocol {
	
}


// MARK: -

class RootRouter: NSObject {
	
	// MARK: - Variables
	
	weak var viewController: UIViewController?
}

// MARK: - Router Protocol

extension RootRouter: RouterProtocol {
	
}

// MARK: Root Presenter to Router Protocol

extension RootRouter: RootPresenterRouterProtocol {
	
}
