//
//  RootRouter.swift
//  Project: SwiftyVIPER
//
//  Module: Root
//
//  By Cody Winton 11/5/16
//  codeRed 2016
//

// MARK: Imports

import Foundation
import UIKit

import SwiftyVIPER

// MARK: Protocols

protocol RootPresenterRouterProtocol: PresenterRouterProtocol {
	func detailsSelected()
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
	
	func detailsSelected() {
		DetailModule()?.present(from: viewController, style: .coverVertical)
	}
}
