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
import UIKit

import SwiftyVIPER

// MARK: Protocols

protocol DetailPresenterRouterProtocol: PresenterRouterProtocol {

}

// MARK: -

final class DetailRouter {

	// MARK: - Variables

	weak var viewController: UIViewController?
}

// MARK: - Router Protocol

extension DetailRouter: RouterProtocol {

}

// MARK: Detail Presenter to Router Protocol

extension DetailRouter: DetailPresenterRouterProtocol {

}
