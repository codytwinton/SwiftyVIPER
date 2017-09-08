//
//  RootInteractor.swift
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

protocol RootPresenterInteractorProtocol {
	func requestTitle()
}

// MARK: -

final class RootInteractor: RootPresenterInteractorProtocol {

	// MARK: - Variables

	weak var presenter: RootInteractorPresenterProtocol?

	// MARK: - Root Presenter to Interactor Protocol

	func requestTitle() {
		presenter?.set(title: "Root")
	}
}
