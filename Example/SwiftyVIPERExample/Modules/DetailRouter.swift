//
//  DetailRouter.swift
//  Project: SwiftyVIPERExample
//
//  Module: Detail
//
//  By Cody Winton 11/9/16
//  codeRed 2016
//

// MARK: Imports

import Foundation
import SwiftyVIPER
import UIKit

// MARK: Protocols

protocol DetailPresenterRouterProtocol: PresenterRouterProtocol {

}

// MARK: -

final class DetailRouter: RouterProtocol, DetailPresenterRouterProtocol {

	// MARK: - Variables

	weak var viewController: UIViewController?

	// MARK: - Router Protocol

	// MARK: Detail Presenter to Router Protocol
}
