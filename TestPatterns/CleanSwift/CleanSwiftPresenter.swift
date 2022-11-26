//
//  CleanSwiftPresenter.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import Foundation
import UIKit

protocol CleanSwiftPresenterLogic {
    func present(data: [Car])
}


class CleanSwiftPresenter {
    weak var viewController: CleanSwiftViewLogic?
}


extension CleanSwiftPresenter: CleanSwiftPresenterLogic {
    func present(data: [Car]) {
        let randomInt = Int.random(in: 0...Car.cars.count - 1)
        let data = Car.cars[randomInt]
        guard let image = UIImage(named: data.color) else { return }
        let text = data.model.uppercased()
        let buttonTitle = "Change"
        
        viewController?.showData(image: image,
                                 text: text,
                                 buttonTitle: buttonTitle)
    }
}
