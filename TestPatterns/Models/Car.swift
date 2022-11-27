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
        Car(model: "mercedes", imageName: "red"),
        Car(model: "audi", imageName: "blue"),
        Car(model: "porsche", imageName: "yellow")
    ]
}
