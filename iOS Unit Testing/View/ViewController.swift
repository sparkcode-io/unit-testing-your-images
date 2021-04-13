//
//  ViewController.swift
//  iOS Unit Testing
//
//  Created by AJ Bartocci on 4/13/21.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Soup Me"
        let story = UIStoryboard(name: "Main", bundle: .main)
        let tabOne = story.instantiateViewController(identifier: "FeatureOneViewController")
        tabOne.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "House"), tag: 1)
        let tabTwo = story.instantiateViewController(identifier: "FeatureTwoViewController")
        tabTwo.tabBarItem = UITabBarItem(title: "Soup", image: UIImage(named: "Soup"), tag: 2)
        let tabThree = story.instantiateViewController(identifier: "FeatureThreeViewController")
        tabThree.tabBarItem = UITabBarItem(title: "Downloads", image: UIImage(named: "download"), tag: 3)
        
        self.setViewControllers([tabOne, tabTwo, tabThree], animated: false)
    }


}

