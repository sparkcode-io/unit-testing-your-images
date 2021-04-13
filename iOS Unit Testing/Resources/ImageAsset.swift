//
//  ImageAsset.swift
//  iOS Unit Testing
//
//  Created by AJ Bartocci on 4/13/21.
//

import UIKit

enum RawImageAsset: String, CaseIterable {
    case home = "House"
    case soup = "Soup"
    case noSoup = "no-soup"
    case download = "download"
    
    func load() -> UIImage? {
        return UIImage(named: self.rawValue)
    }
}

struct ImageAsset {
    static func load(_ asset: RawImageAsset) -> UIImage {
        return asset.load()!
    }
}
