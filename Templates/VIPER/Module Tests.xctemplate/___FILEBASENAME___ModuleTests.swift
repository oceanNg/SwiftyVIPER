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

import XCTest

@testable import ___PROJECTNAME___

import SwiftyVIPER


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___ModuleTests: XCTestCase {
	
	// MARK: - Variables
	
	var module: ___FILEBASENAMEASIDENTIFIER___Module!
	
	
	// MARK: Test Functions
	
	func testSetup() {
		XCTAssertNotNil(module)
		
		XCTAssertNotNil(module.interactor)
		XCTAssertNotNil(module.router)
		XCTAssertNotNil(module.presenter)
		XCTAssertNotNil(module.view)
		XCTAssertNotNil(module.viewController)
		
		XCTAssertNotNil(module.view.presenter)
		
		XCTAssertNotNil(module.presenter.view)
		XCTAssertNotNil(module.presenter.router)
		XCTAssertNotNil(module.presenter.interactor)
		
		XCTAssertNotNil(module.router.viewController)
		
		XCTAssertNotNil(module.interactor.presenter)
	}
	
	
	// MARK: Setup
	
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		
		module = ___FILEBASENAMEASIDENTIFIER___Module()
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
}
