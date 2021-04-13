//
//  ImageAssetTests.swift
//  iOS Unit TestingTests
//
//  Created by AJ Bartocci on 4/13/21.
//

import XCTest
@testable import iOS_Unit_Testing

class ImageAssetTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testImagesLoad() {
        RawImageAsset.allCases.forEach { (asset) in
            let img = asset.load()
            XCTAssertNotNil(img, "Unable to load asset: \(asset.rawValue)")
        }
    }
}
