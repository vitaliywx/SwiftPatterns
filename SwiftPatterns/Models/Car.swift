//
//  MVCModel.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import Foundation

struct Car {
    let model: String
    let imageName: String
    let buttonTitle: String = "Change"
}

extension Car {
    static var cars = [
        Car(model: "mercedes", imageName: "white"),
        Car(model: "bmw", imageName: "red"),
        Car(model: "audi", imageName: "blue"),
        Car(model: "porsche", imageName: "yellow"),
        Car(model: "lexus", imageName: "black"),
        Car(model: "infinity", imageName: "gray")
    ]
}
