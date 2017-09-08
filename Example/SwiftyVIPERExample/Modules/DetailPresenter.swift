//
//  DetailPresenter.swift
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

// MARK: Protocols

protocol DetailViewPresenterProtocol: ViewPresenterProtocol {
	func closeSelected()
}

protocol DetailInteractorPresenterProtocol: class {
	func set(title: String?)
}

// MARK: -

final class DetailPresenter: DetailViewPresenterProtocol, DetailInteractorPresenterProtocol {

	// MARK: - Constants

	let router: DetailPresenterRouterProtocol
	let interactor: DetailPresenterInteractorProtocol

	// MARK: Variables

	weak var view: DetailPresenterViewProtocol?

	// MARK: Inits

	init(router: DetailPresenterRouterProtocol, interactor: DetailPresenterInteractorProtocol) {
		self.router = router
		self.interactor = interactor
	}

	// MARK: - Detail View to Presenter Protocol

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

	// MARK: Detail Interactor to Presenter Protocol

	func set(title: String?) {
		view?.set(title: title)
	}
}
