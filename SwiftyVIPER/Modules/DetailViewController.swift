//
//  DetailViewController.swift
//  Project: SwiftyVIPER
//
//  Module: Detail
//
//  By Cody Winton 11/5/16
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
	
	let presenter: DetailViewPresenterProtocol


	// MARK: Variables
	
	lazy var titleLabel: UILabel = {
		let width = UIScreen.main.bounds.width
		let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: 40))
		label.textAlignment = .center
		return label
	}()
	
	lazy var closeButton: UIButton = {
		let button = UIButton(type: .system)
		button.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
		button.setTitle("Close", for: .normal)
		button.addTarget(self, action: #selector(closeSelected), for: .touchUpInside)
		return button
	}()


	// MARK: Inits

	init(presenter: DetailViewPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	deinit {
		print("deinit: \(self)")
	}
	
	
	// MARK: - Functions
	
	func closeSelected() {
		presenter.closeSelected()
	}
	

	// MARK: - Load Functions

	override func viewDidLoad() {
		super.viewDidLoad()
		presenter.viewLoaded()
		
		view.backgroundColor = .white
		
		view.addSubview(titleLabel)
		titleLabel.snp.makeConstraints() {
			(make) in
			make.left.equalTo(self.view).offset(30)
			make.centerX.equalTo(self.view)
			make.top.equalTo(self.view).offset(40)
			make.height.equalTo(self.titleLabel.frame.height)
		}
		
		view.addSubview(closeButton)
		closeButton.snp.makeConstraints() {
			(make) in
			make.centerY.equalTo(self.titleLabel)
			make.right.equalTo(self.view).offset(-20)
			make.size.equalTo(self.closeButton.frame.size)
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


// MARK: - Detail Presenter to View Protocol

extension DetailViewController: DetailPresenterViewProtocol {
	
	func set(title: String?) {
		self.titleLabel.text = title
	}
}
