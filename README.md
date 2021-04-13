# Unit testing your image assets
A simple example of how to work with image assets in a way that is unit testable.

# Goal
```swift
// loading our images
let homeImg = ImageAsset.load(.home)
let downloadImg = ImageAsset.load(.download)

// covered by unit tests
enum RawImageAsset: String, CaseIterable {
    case home = "House"
    case soup = "Soup"
    case noSoup = "no-soup"
    case download = "download"
    /// ... 
    
    func load() -> UIImage? {
        return UIImage(named: self.rawValue)
    }
}

struct ImageAsset {
    static func load(_ asset: RawImageAsset) -> UIImage {
        // we can force unwrap here since RawImageAsset is covered by our unit testing
        // so we know this should never be nil
        return asset.load()!
    }
}
```

By creating a struct for images we can add some more safety to how we interact with image assets. This allows us to write unit tests that can verify that our image assets exist. This becomes really helpful in large projects where there are many many assets of different kinds. As we refactor over time it is easy to accidentally delete an asset or mispell an asset name. The goal here is to help prevent these issues. 

# Simple Testing
We can test all our image assets with a single test that will loop over all of the images. This is dead simple and is self-maintainable -- we don't need to create / delete tests over time. 

```swift 
func testImagesLoad() {
    RawImageAsset.allCases.forEach { (asset) in
        let img = asset.load()
        XCTAssertNotNil(img, "Unable to load asset: \(asset.rawValue)")
    }
}
```
