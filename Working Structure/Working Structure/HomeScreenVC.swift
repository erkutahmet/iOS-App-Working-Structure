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
        let person = Persons(name: "Erkut", age: 21, height: 1.88, status: true)
        performSegue(withIdentifier: "toGameScreen", sender: person)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare func worked")
        if segue.identifier == "toGameScreen" {
            print("toGameScreen passed")
            
            if let data = sender as? Persons {
                let toVC = segue.destination as! GameScreenVC
                toVC.person = data
            }
        }
    }
}
