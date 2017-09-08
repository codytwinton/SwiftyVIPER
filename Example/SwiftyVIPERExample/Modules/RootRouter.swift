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
import SwiftyVIPER
import UIKit

// MARK: Protocols

protocol RootPresenterRouterProtocol: PresenterRouterProtocol {
	func detailsSelected()
}

// MARK: -

final class RootRouter: RouterProtocol, RootPresenterRouterProtocol {

	// MARK: - Variables

	weak var viewController: UIViewController?

	// MARK: - Router Protocol

	// MARK: Root Presenter to Router Protocol

	func detailsSelected() {
		DetailModule().present(from: viewController, style: .coverVertical)
	}
}
