//
//  ViewController.swift
//  Working Structure
//
//  Created by Ahmet Erkut on 10.10.2023.
//

import UIKit

class HomeScreenVC: UIViewController {

    @IBOutlet weak var homeScreenLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreenLabel.text = "Welcome\nHome Screen"
    }
    @IBAction func makeButtonClicked(_ sender: Any) {
        homeScreenLabel.text = "Hello"
    }
    
    @IBAction func startButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toGameScreen", sender: nil)
    }
}
