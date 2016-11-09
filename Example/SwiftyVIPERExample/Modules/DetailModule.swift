//
//  DetailModule.swift
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


// MARK: -

class DetailModule {
	
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
	
	private(set) var view: DetailViewController
	
	init?() {
		let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
		guard let view = storyboard.viewController(DetailViewController.self) else {return nil}
		
		self.view = view
		self.view.presenter = presenter
		
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}

// MARK: - Module Protocol

extension DetailModule: ModuleProtocol {
	var viewController: UIViewController {return view}
}
