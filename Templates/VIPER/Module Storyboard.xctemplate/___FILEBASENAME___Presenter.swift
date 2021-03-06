//
//  ___FILENAME___
//  Project: ___PROJECTNAME___
//
//  Module: ___VARIABLE_viperModuleName___
//
//  By ___FULLUSERNAME___ ___DATE___
//  ___ORGANIZATIONNAME___ ___YEAR___
//

// MARK: Imports

import UIKit

import SwiftyVIPER


// MARK: Protocols

/// Should be conformed to by the `___FILEBASENAMEASIDENTIFIER___Presenter` and referenced by `___FILEBASENAMEASIDENTIFIER___ViewController`
protocol ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol: ViewPresenterProtocol {

}

/// Should be conformed to by the `___FILEBASENAMEASIDENTIFIER___Presenter` and referenced by `___FILEBASENAMEASIDENTIFIER___Interactor`
protocol ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol: class {
	/** Sets the title for the presenter
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}


// MARK: -

/// The Presenter for the ___FILEBASENAMEASIDENTIFIER___ module
class ___FILEBASENAMEASIDENTIFIER___Presenter: NSObject {

	// MARK: - Constants

	let router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol
	let interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol


	// MARK: Variables

	weak var view: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol?


	// MARK: Inits

	init(router: ___FILEBASENAMEASIDENTIFIER___PresenterRouterProtocol, interactor: ___FILEBASENAMEASIDENTIFIER___PresenterInteractorProtocol) {
		self.router = router
		self.interactor = interactor
		super.init()
	}
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___ View to Presenter Protocol

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol {

	func viewLoaded() {
		interactor.requestTitle()
	}

	func viewAppearing() {

	}

	func viewAppeared() {

	}

	func viewDisappeared() {

	}
}

// MARK: ___FILEBASENAMEASIDENTIFIER___ Interactor to Presenter Protocol

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___InteractorPresenterProtocol {

	func set(title: String?) {
		view?.set(title: title)
	}
}
