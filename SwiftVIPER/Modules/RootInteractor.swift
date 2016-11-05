//
//  RootInteractor.swift
//  Project: SwiftVIPER
//
//  Module: Root
//
//  By Cody Winton 11/4/16
//  codeRed 2016
//

// MARK: Imports

import Foundation


// MARK: Protocols

protocol RootPresenterInteractorProtocol {
	func requestTitle()
}


// MARK: -

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
