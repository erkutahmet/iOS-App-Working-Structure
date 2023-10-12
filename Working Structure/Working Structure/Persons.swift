//
//  Persons.swift
//  Working Structure
//
//  Created by Ahmet Erkut on 12.10.2023.
//

import Foundation

class Persons {
    var name: String?
    var age: Int?
    var height: Double?
    var status: Bool?

    init() {
        
    }
    
    init(name: String, age: Int, height: Double, status: Bool) {
        self.name = name
        self.age = age
        self.height = height
        self.status = status
    }
}
