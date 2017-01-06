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

final class DetailModule {

	// MARK: - Constants

	let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

	// MARK: Variables

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
		let vc = self.storyboard.viewController(DetailViewController.self)
		vc.presenter = self.presenter
		return vc
	}()

	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}

// MARK: - Module Protocol

extension DetailModule: ModuleProtocol {
	var viewController: UIViewController { return view }
}
