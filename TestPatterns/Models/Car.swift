//
//  MVCModel.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import Foundation

struct Car {
    let model: String
    let color: String
}

extension Car {
    static var cars = [
        Car(model: "mercedes", color: "white"),
        Car(model: "mercedes", color: "red"),
        Car(model: "audi", color: "blue"),
        Car(model: "porsche", color: "yellow")
    ]
}
