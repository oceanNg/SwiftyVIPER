//
//  RootModule.swift
//  Project: SwiftyVIPER
//
//  Module: Root
//
//  By Cody Winton 11/5/16
//  codeRed 2016
//

// MARK: Imports

import Foundation
import UIKit

import SwiftyVIPER


// MARK: -

class RootModule {
	
	// MARK: - Variables
	
	private(set) lazy var interactor: RootInteractor = {
		return RootInteractor()
	}()
	
	private(set) lazy var router: RootRouter = {
		return RootRouter()
	}()
	
	private(set) lazy var presenter: RootPresenter = {
		return RootPresenter(router: self.router, interactor: self.interactor)
	}()
	
	private(set) lazy var view: RootViewController = {
		return RootViewController(presenter: self.presenter)
	}()
	
	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}

// MARK: - Module Protocol

extension RootModule: ModuleProtocol {
	var viewController: UIViewController {return view}
}
