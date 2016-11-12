//
//  RootInteractor.swift
//  Project: SwiftyVIPER
//
//  Module: Root
//
//  By Cody Winton 11/7/16
//  codeRed 2016
//

// MARK: Imports

import Foundation


// MARK: Protocols

/// Should be conformed to by the `RootInteractor` and referenced by `RootPresenter`
protocol RootPresenterInteractorProtocol {
	/// Requests the title for the presenter
	func requestTitle()
}


// MARK: -

/// The Interactor for the Root module
class RootInteractor: NSObject {

	// MARK: - Variables

	weak var presenter: RootInteractorPresenterProtocol?
}

// MARK: - Root Presenter to Interactor Protocol

extension RootInteractor: RootPresenterInteractorProtocol {
	
	func requestTitle() {
		presenter?.set(title: "Root")
	}
}
