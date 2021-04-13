//
//  SoupViewController.swift
//  iOS Unit Testing
//
//  Created by AJ Bartocci on 4/13/21.
//

import UIKit

class SoupViewController: UIViewController {
    
    @IBOutlet
    private weak var imageView: UIImageView!
    @IBOutlet
    private weak var downloadButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let soupImg = ImageAsset.load(.noSoup)
        imageView.image = soupImg
        let downloadImg = ImageAsset.load(.download)
        downloadButton.setTitle("", for: .normal)
        downloadButton.setImage(downloadImg, for: .normal)
    }

}
