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

import UIKit

import SwiftyVIPER


// MARK: Protocols

protocol DetailPresenterViewProtocol: class {
	func set(title: String?)
}


// MARK: -

class DetailViewController: UIViewController {
	
	// MARK: - Constants
	
	
	// MARK: Variables
	
	var presenter: DetailViewPresenterProtocol?
	
	
	@IBOutlet weak var titleLabel: UILabel? {
		willSet(label) {
			label?.textAlignment = .center
		}
	}
	
	@IBOutlet weak var closeButton: UIButton? {
		willSet(button) {
			button?.setTitle("Close", for: .normal)
			button?.addTarget(self, action: #selector(closeSelected), for: .touchUpInside)
		}
	}
	
	
	// MARK: - Functions
	
	func closeSelected() {
		presenter?.closeSelected()
	}
	
	// MARK: - Load Functions
	
	override func viewDidLoad() {
    	super.viewDidLoad()
		presenter?.viewLoaded()
		
		view.backgroundColor = .white
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		presenter?.viewAppearing()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		presenter?.viewAppeared()
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		presenter?.viewDisappeared()
	}
}


// MARK: - Storyboard Protocol

extension DetailViewController: ViewStoryboardProtocol {
	static var storyboardID: String { return "Detail" }
}


// MARK: - Detail Presenter to View Protocol

extension DetailViewController: DetailPresenterViewProtocol {
	
	func set(title: String?) {
		titleLabel?.text = title
	}
}