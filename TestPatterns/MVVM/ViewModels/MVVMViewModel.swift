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
    var buttonTitle: String!
    
    func buttonPressed() {
        let data = Car.cars
        let randomInt = Int.random(in: 0...data.count - 1)
        let item = data[randomInt]
        labelText.value = item.model.uppercased()
        image.value = item.color
        buttonTitle = item.buttonTitle
    }
}
