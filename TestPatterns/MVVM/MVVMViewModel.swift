//
//  MVVMViewModel.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import Foundation

class MVVMViewModel {
    var labelText = Dynamic("")
    var image = Dynamic("")
    
    func buttonPressed() {
        let randomInt = Int.random(in: 0...Car.cars.count - 1)
        let data = Car.cars[randomInt]
        labelText.value = data.model.uppercased()
        image.value = data.color
    }
}
