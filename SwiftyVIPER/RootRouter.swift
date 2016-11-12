//
//  RootRouter.swift
//  Project: SwiftyVIPER
//
//  Module: Root
//
//  By Cody Winton 11/7/16
//  codeRed 2016
//

// MARK: Imports

import Foundation
import UIKit


// MARK: Protocols

/// Should be conformed to by the `RootRouter` and referenced by `RootPresenter`
protocol RootPresenterRouterProtocol: PresenterRouterProtocol {

}


// MARK: -

/// The Router for the Root module
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
