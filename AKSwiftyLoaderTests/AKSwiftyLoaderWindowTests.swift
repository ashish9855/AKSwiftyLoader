//
//  AKSwiftyLoaderWindow.swift
//  AKSwiftyLoaderTests
//
//  Created by Ashish Maheshwari on 28/03/18.
//  Copyright © 2018 Ashish Maheshwari. All rights reserved.
//

import XCTest
@testable import AKSwiftyLoader

class AKSwiftyLoaderWindowTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testThatGetsContentViewNotNil() {
        
        let view = AKSwiftyLoaderWindow().getContentView()
        XCTAssertNotNil(view, "Couldn't retrieve view from XIB")
    }
    
    func testThatChecksOutletsForView() {
        
        let view = AKSwiftyLoaderWindow()
        XCTAssertNotNil(view.backgroundView, "Background View cannot be nil")
        XCTAssertNotNil(view.loaderView, "Loader View cannot be nil")
    }
}
