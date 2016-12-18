//
//  RootPresenter.swift
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


// MARK: Protocols

protocol RootViewPresenterProtocol: ViewPresenterProtocol {
	func detailsSelected()
}

protocol RootInteractorPresenterProtocol: class {
	func set(title: String?)
}


// MARK: -

final class RootPresenter {
	
	// MARK: - Constants
	
	let router: RootPresenterRouterProtocol
	let interactor: RootPresenterInteractorProtocol
	
	
	// MARK: Variables
	
	weak var view: RootPresenterViewProtocol?
	
	
	// MARK: Inits
	
	init(router: RootPresenterRouterProtocol, interactor: RootPresenterInteractorProtocol) {
		self.router = router
		self.interactor = interactor
	}
}

// MARK: - Root View to Presenter Protocol

extension RootPresenter: RootViewPresenterProtocol {

	func viewLoaded() {
		interactor.requestTitle()
	}
	
	func viewAppearing() {
		
	}
	
	func viewAppeared() {
		
	}
	
	func viewDisappeared() {
		
	}
	
	func detailsSelected() {
		router.detailsSelected()
	}
}

// MARK: Root Interactor to Presenter Protocol

extension RootPresenter: RootInteractorPresenterProtocol {
	
	func set(title: String?) {
		view?.set(title: title)
	}
}
