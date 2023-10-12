//
//  GameScreenVC.swift
//  Working Structure
//
//  Created by Ahmet Erkut on 10.10.2023.
//

import UIKit

class GameScreenVC: UIViewController {

    var person: Persons?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let p = person {
            print("---- GameScreenVC ----")
            print("Person Name  : \(p.name!)")
            print("Person Age   : \(p.age!)")
            print("Person Height: \(p.height!)")
            print("Person Status: \(p.status!)")
        }
    }
    @IBAction func backButtonClicked(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func doneButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toResultScreen", sender: nil)
    }
}
