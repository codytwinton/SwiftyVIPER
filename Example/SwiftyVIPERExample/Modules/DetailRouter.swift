//
//  DetailRouter.swift
//  Project: SwiftyVIPER
//
//  Module: Detail
//
//  By Cody Winton 11/5/16
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

class DetailRouter: NSObject {
	
	// MARK: - Variables
	
	weak var viewController: UIViewController?
}

// MARK: - Router Protocol

extension DetailRouter: RouterProtocol {
	
}

// MARK: Detail Presenter to Router Protocol

extension DetailRouter: DetailPresenterRouterProtocol {
	
}
