//
//  RootViewController.swift
//  Project: SwiftyVIPER
//
//  Module: Root
//
//  By Cody Winton 11/4/16
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
	
	lazy var titleLabel: UILabel = {
		let width = UIScreen.main.bounds.width
		let label = UILabel(frame: CGRect(x: 0, y: 20, width: width, height: 40))
		label.textAlignment = .center
		return label
	}()
	
	
	// MARK: Inits
	
	init(presenter: RootViewPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	deinit {
		print("deinit: \(self)")
	}
	
	
	// MARK: - Load Functions

	override func viewDidLoad() {
        super.viewDidLoad()
		presenter.viewLoaded()
		
		view.addSubview(titleLabel)
		
		titleLabel.snp.makeConstraints() {
			(make) in
			make.left.equalTo(self.view)
			make.right.equalTo(self.view)
			make.top.equalTo(self.view).offset(self.titleLabel.frame.origin.y)
			make.height.equalTo(self.titleLabel.frame.height)
		}
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
		self.titleLabel.text = title
	}
}
