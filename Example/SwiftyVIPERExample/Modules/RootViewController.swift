//
//  RootViewController.swift
//  Project: SwiftyVIPER
//
//  Module: Root
//
//  By Cody Winton 11/5/16
//  codeRed 2016
//

// MARK: Imports

import UIKit

import SwiftyVIPER

// MARK: Protocols

protocol RootPresenterViewProtocol: class {
	func set(title: String?)
}


// MARK: -

class RootViewController: UIViewController {
	
	// MARK: - Constants

	let presenter: RootViewPresenterProtocol
	
	
	// MARK: Variables
	
	lazy var rootImageView: UIImageView = {
		let imageView = UIImageView(image: #imageLiteral(resourceName: "SwiftyVIPER"))
		imageView.contentMode = .scaleAspectFit
		return imageView
	}()
	
	lazy var detailsButton: UIButton = {
		let button = UIButton(type: .system)
		button.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
		button.setTitle("Show Details", for: .normal)
		button.addTarget(self, action: #selector(detailsSelected), for: .touchUpInside)
		return button
	}()
	
	
	// MARK: Inits
	
	init(presenter: RootViewPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	// MARK: - Functions
	
	func detailsSelected() {
		presenter.detailsSelected()
	}
	
	
	// MARK: - Load Functions

	override func viewDidLoad() {
        super.viewDidLoad()
		presenter.viewLoaded()
		
		view.backgroundColor = .white
		
		view.addSubview(rootImageView)
		rootImageView.snp.makeConstraints() {
			(make) in
			make.top.equalTo(40)
			make.centerX.equalTo(self.view)
			make.left.equalTo(self.view).offset(30)
			make.height.equalTo(150)
		}
		
		view.addSubview(detailsButton)
		detailsButton.snp.makeConstraints() {
			(make) in
			make.bottom.equalTo(self.view).offset(-30)
			make.centerX.equalTo(self.view)
			make.size.equalTo(self.detailsButton.frame.size)
		}
    }
}


// MARK: - Root Presenter to View Protocol

extension RootViewController: RootPresenterViewProtocol {
	
	func set(title: String?) {
		self.title = title
	}
}
