//
//  ViewController.swift
//  Working Structure
//
//  Created by Ahmet Erkut on 10.10.2023.
//

import UIKit

class HomeScreenVC: UIViewController {

    @IBOutlet weak var homeScreenLabel: UILabel!
    
    override func viewDidLoad() { // The application runs the first time it is opened (it only runs once)
        super.viewDidLoad()
        homeScreenLabel.text = "Welcome\nHome Screen"
        print("viewDidLoad() runned")
    }
    
    override func viewWillAppear(_ animated: Bool) { // Runs whenever the page is appear
        print("viewWillAppear() runned")
    }
    
    override func viewWillDisappear(_ animated: Bool) { // Runs whenever the page is disappear
        print("viewWillDisappear() runned")
    }
    
    override func viewDidAppear(_ animated: Bool) { // Runs after the page is appear
        print("viewDidAppear runned")
    }
    
    override func viewDidDisappear(_ animated: Bool) { // Runs after page becomes disappear
        print("viewDidDisappear runned")
    }
    
    @IBAction func makeButtonClicked(_ sender: Any) {
        homeScreenLabel.text = "Hello"
    }
    
    @IBAction func startButtonClicked(_ sender: Any) {
        let person = Persons(name: "Erkut", age: 21, height: 1.88, status: true)
        performSegue(withIdentifier: "toGameScreen", sender: person)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare func runned")
        if segue.identifier == "toGameScreen" {
            print("toGameScreen passed")
            
            if let data = sender as? Persons {
                let toVC = segue.destination as! GameScreenVC
                toVC.person = data
            }
        }
    }
    
    @IBAction func addButtonClicked(_ sender: Any) {
        print("Add Selected")
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        print("Save Selected")
    }
}
