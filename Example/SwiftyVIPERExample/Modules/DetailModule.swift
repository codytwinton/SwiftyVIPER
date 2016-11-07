//
//  DetailModule.swift
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


// MARK: -

class DetailModule: NSObject {
	
	// MARK: - Variables
	
	private(set) lazy var interactor: DetailInteractor = {
		return DetailInteractor()
	}()
	
	private(set) lazy var router: DetailRouter = {
		return DetailRouter()
	}()
	
	private(set) lazy var presenter: DetailPresenter = {
		return DetailPresenter(router: self.router, interactor: self.interactor)
	}()
	
	private(set) lazy var view: DetailViewController = {
		return DetailViewController(presenter: self.presenter)
	}()
	
	override init() {
		super.init()
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}

// MARK: - Module Protocol

extension DetailModule: ModuleProtocol {
	var viewController: UIViewController? {return view}
}
