//
//  DetailPresenter.swift
//  Project: SwiftyVIPER
//
//  Module: Detail
//
//  By Cody Winton 11/5/16
//  codeRed 2016
//

// MARK: Imports

import Foundation

import SwiftyVIPER


// MARK: Protocols

protocol DetailViewPresenterProtocol: ViewPresenterProtocol {
	func closeSelected()
}

protocol DetailInteractorPresenterProtocol: class {
	func set(title: String?)
}


// MARK: -

class DetailPresenter: NSObject {

	// MARK: - Constants

	let router: DetailPresenterRouterProtocol
	let interactor: DetailPresenterInteractorProtocol


	// MARK: Variables

	weak var view: DetailPresenterViewProtocol?


	// MARK: Inits

	init(router: DetailPresenterRouterProtocol, interactor: DetailPresenterInteractorProtocol) {
		self.router = router
		self.interactor = interactor
		super.init()
	}
}

// MARK: - Detail View to Presenter Protocol

extension DetailPresenter: DetailViewPresenterProtocol {

	func viewLoaded() {
		interactor.requestTitle()
	}

	func viewAppearing() {

	}

	func viewAppeared() {

	}

	func viewDisappeared() {

	}
	
	func closeSelected() {
		router.dismiss(completion: nil)
	}
}

// MARK: Detail Interactor to Presenter Protocol

extension DetailPresenter: DetailInteractorPresenterProtocol {

	func set(title: String?) {
		view?.set(title: title)
	}
}
