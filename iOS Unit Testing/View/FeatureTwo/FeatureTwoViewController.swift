//
//  FeatureTwoViewController.swift
//  iOS Unit Testing
//
//  Created by AJ Bartocci on 4/13/21.
//

import UIKit

class FeatureTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction
    private func getSoup() {
        let vc = SoupViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
