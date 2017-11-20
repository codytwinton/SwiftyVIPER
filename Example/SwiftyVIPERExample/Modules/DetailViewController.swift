//
//  DetailViewController.swift
//  Project: SwiftyVIPERExample
//
//  Module: Detail
//
//  By Cody Winton 11/9/16
//  codeRed 2016
//

// MARK: Imports

import SwiftyVIPER
import UIKit

// MARK: Protocols

protocol DetailPresenterViewProtocol: class {
	func set(title: String?)
}

// MARK: -

class DetailViewController: UIViewController, StoryboardIdentifiable, DetailPresenterViewProtocol {

	// MARK: - Constants

	// MARK: Variables

	var presenter: DetailViewPresenterProtocol?

	@IBOutlet weak private(set) var titleLabel: UILabel? {
		willSet(label) {
			label?.textAlignment = .center
		}
	}

	@IBOutlet weak private(set) var closeButton: UIButton? {
		willSet(button) {
			button?.setTitle("Close", for: .normal)
			button?.addTarget(self, action: #selector(closeSelected), for: .touchUpInside)
		}
	}

	// MARK: - Functions

	@objc
	func closeSelected() {
		presenter?.closeSelected()
	}

	// MARK: - Load Functions

	override func viewDidLoad() {
    	super.viewDidLoad()
		presenter?.viewLoaded()

		view.backgroundColor = .white
    }

	// MARK: - Detail Presenter to View Protocol

	func set(title: String?) {
		titleLabel?.text = title
	}
}
