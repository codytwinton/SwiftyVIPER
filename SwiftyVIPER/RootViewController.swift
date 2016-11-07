//
//  RootViewController.swift
//  Project: SwiftyVIPER
//
//  Module: Root
//
//  By Cody Winton 11/7/16
//  codeRed 2016
//

// MARK: Imports

import UIKit

// MARK: Protocols

protocol RootPresenterViewProtocol: class {
	func set(title: String?)
}


// MARK: -

class RootViewController: UIViewController {

	// MARK: - Constants

	let presenter: RootViewPresenterProtocol


	// MARK: Variables


	// MARK: Inits

	init(presenter: RootViewPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


	// MARK: - Load Functions

	override func viewDidLoad() {
    	super.viewDidLoad()
		presenter.viewLoaded()

		view.backgroundColor = .white
    }

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		presenter.viewAppearing()
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		presenter.viewAppeared()
	}

	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		presenter.viewDisappeared()
	}
}


// MARK: - Root Presenter to View Protocol

extension RootViewController: RootPresenterViewProtocol {

	func set(title: String?) {
		print("title: \(title)")
		self.title = title
	}
}
