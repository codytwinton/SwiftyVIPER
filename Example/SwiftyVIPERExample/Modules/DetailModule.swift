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
import SwiftyVIPER
import UIKit

// MARK: -

final class DetailModule: ModuleProtocol {

	// MARK: - Constants

	let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)

	// MARK: Variables

	private(set) lazy var interactor: DetailInteractor = {
		DetailInteractor()
	}()

	private(set) lazy var router: DetailRouter = {
		DetailRouter()
	}()

	private(set) lazy var presenter: DetailPresenter = {
		DetailPresenter(router: self.router, interactor: self.interactor)
	}()

	private(set) lazy var view: DetailViewController = {
		let vc = self.storyboard.viewController(DetailViewController.self)
		vc.presenter = self.presenter
		return vc
	}()

	// MARK: - Module Protocol Variables

	var viewController: UIViewController { return view }

	// MARK: Inits

	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}
