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

        let soupImg = UIImage(named: "no-soup")!
        imageView.image = soupImg
        let downloadImg = UIImage(named: "download")!
        downloadButton.setTitle("", for: .normal)
        downloadButton.setImage(downloadImg, for: .normal)
    }

}
