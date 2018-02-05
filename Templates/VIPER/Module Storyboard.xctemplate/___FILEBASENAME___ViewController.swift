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
class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

	// MARK: - Constants

	// MARK: Variables

	var presenter: ___VARIABLE_productName___ViewPresenterProtocol?

	// MARK: - Load Functions

	override func viewDidLoad() {
    	super.viewDidLoad()
		presenter?.viewLoaded()

		view.backgroundColor = .white
    }
}

// MARK: - Storyboard Protocol

extension ___FILEBASENAMEASIDENTIFIER___: StoryboardIdentifiable {}

// MARK: - ___VARIABLE_productName___ Presenter to View Protocol

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___PresenterViewProtocol {

	func set(title: String?) {
		self.title = title
	}
}
