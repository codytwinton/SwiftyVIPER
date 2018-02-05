//
//  ___FILENAME___
//  Project: ___PROJECTNAME___
//
//  Module: ___VARIABLE_productName___
//
//  By ___FULLUSERNAME___ ___DATE___
//  ___ORGANIZATIONNAME___ ___YEAR___
//

// MARK: Imports

import UIKit

import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `___FILEBASENAMEASIDENTIFIER___` and referenced by `___VARIABLE_productName___Presenter`
protocol ___VARIABLE_productName___PresenterViewProtocol: class {
	/** Sets the title for the view
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}

// MARK: -

/// The View Controller for the ___VARIABLE_productName___ module
class ___FILEBASENAMEASIDENTIFIER___: UIViewController, ___VARIABLE_productName___PresenterViewProtocol {

	// MARK: - Constants

	let presenter: ___VARIABLE_productName___ViewPresenterProtocol

	// MARK: Variables

	// MARK: Inits

	init(presenter: ___VARIABLE_productName___ViewPresenterProtocol) {
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

	// MARK: - ___VARIABLE_productName___ Presenter to View Protocol

	func set(title: String?) {
		self.title = title
	}
}
